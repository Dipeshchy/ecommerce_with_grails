package grails_ecommerce

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    // getting unique brands
    def brands() {
        def c = Product.createCriteria()
        def brands = c.list {
            projections {
                distinct('brand')
            }
        }
        return brands
    }

    // method to return the number of items in cart in navbar
    def cartSize() {
        def numberInCart
        if (session.cart == null) {
            numberInCart = 0

        } else {
            def cart = session.cart
            numberInCart = cart.size()

        }
        return numberInCart
    }


    // navbar
    def navbar() {
        render(template: 'navbar',model: [numberInCart: cartSize()])
    }

    // category side bar
    def categoryList() {
        def categoryList = Category.list()
        render(template: 'category_list',model: [categoryList: categoryList])
    }


//    dashboard(main page)
    def featured_products() {

        [productList: Product.list(),productCount:Product.count()]
    }

    // main dashboard
    def dashboard() {
        def c = Product.createCriteria()
        def brands = c.list {
            projections {
                distinct('brand')
            }
        }
        [message: 'Featured Products',productList: Product.list(),categoryList: Category.list(),productbrands:brands, numberInCart: cartSize()]
    }


    // selecting category
    def sortByCategory() {
        def category = params.categoryname
        def c = Product.createCriteria()
        def results = c.list {
            eq('categoryName',Category.findByCategoryName(category))
        }
        render(template: 'featured_products',model: [productList: results ,message: "Search Results By Category "+Category.findByCategoryName(category)])
    }


    // search result by price range
    def searchByPrice() {
        def minimumPrice = params.minimumPrice as Double
        def maximumPrice = params.maximumPrice as Double
        if (minimumPrice > maximumPrice) {
            def results = []
            render(template: 'featured_products',model: [productList: results ,message: "Invalid Price Range"])
        } else {
            def c = Product.createCriteria()
            def results = c.list {
                between('price', minimumPrice, maximumPrice)
            }
            def minPrice = minimumPrice as int
            def maxPrice = maximumPrice as int
            render(template: 'featured_products', model: [productList: results, message: "Search Results By Price between " + minPrice + " To " + maxPrice])
        }
    }

    // search result by brand
    def searchByBrand() {
        def brand = params.brand
        if (brand=="all") {
            render(template: 'featured_products',model: [ productList: Product.list(),message:"Searched Results of Brand All "])
        }
        else {
            def c = Product.createCriteria()
            def results = c.list {
                eq('brand',brand)
            }
            render(template: 'featured_products',model: [productList: results, message:"Searched Results of Brand "+brand ])
        }
    }

    // search product By User Input
    def searchProduct() {
        def productItem = params.productToSearch
        def  c = Product.createCriteria()
        def resultProducts = c.list {
            like('productName',productItem)
        }
            render(template: 'featured_products',model: [productList: resultProducts, message:"Searched Results of "+productItem ])
    }

    // more detail info about the product
    def moreInfo() {
        def productId = params.product
        def productInfo = Product.findById(productId)
        render(view: 'moreInfo',model: [ numberInCart: cartSize(),product: productInfo,categoryList: Category.list()])
    }

    // method to add item to cart
    def addToCart() {
        def productId = params.product
        if(!session.cart) {
            def cart = []
            cart.add(productId)
            session.cart = cart
        }
        else {
            def cart = session.cart
            cart.add(productId)
            session.cart = cart
        }
        render(view: 'cart',model: [numberInCart: cartSize(),categoryList: Category.list()])
    }

    // to delete item from cart
    def deleteFromCart() {
        def productId = params.productId
        def cartList = session.cart
        cartList.remove(productId)
        session.cart = cartList
        render(view: 'cart',model: [ numberInCart: cartSize(), categoryList: Category.list()])
    }

    // to redirect to cart page
    def cart() {
        render(view: 'cart',model: [ numberInCart: cartSize()])
    }

    // to redirect user to confirm order
    def placeOrder() {
        render(view: 'placeOrder',model: [numberInCart: cartSize()])
    }

    // about the site
    def about() {
        [numberInCart: cartSize()]
    }

    // contact us page
    def contact() {
        [numberInCart: cartSize()]
    }

    // faq page
    def faq() {
        [numberInCart: cartSize()]
    }

    // to send main to user to confirm order
    def mailService
    @Transactional
    def confirmOrder() {
        def emailAddress = params.email
        def fullName = params.fullName
        def mobile = params.mobile
        def phone = params.phone
        def address = params.address
        def items = []
        def cart = session.cart
        for (item in cart) {
            items.add(item)
        }
        def products = []
        for (itemId in items) {
            def product = Product.findById(itemId)
            products.add(product)
        }

        def totalPrice = 0
        for(itemId in items) {
            def price = Product.findById(itemId).getPrice() - Product.findById(itemId).getDiscount()
            totalPrice = totalPrice + price
        }
        mailService.sendMail {
                to emailAddress
                subject "Order Confirmed"
                html g.render(template: 'message',model: [address: address,mobile:mobile, products: products,totalPrice:totalPrice ,fullName: fullName])
            }
        for(item in products) {
            OrderEcommerce orderEcommerce = new OrderEcommerce()
            orderEcommerce.name = fullName
            orderEcommerce.email = emailAddress
            orderEcommerce.mobileNumber = mobile
            orderEcommerce.phoneNumber = phone
            orderEcommerce.address = address
            orderEcommerce.productName = item
            orderEcommerce.status = "Pending"
            orderEcommerce.dateOfOrder = new Date()
            orderEcommerce.save()
        }
        session.cart = null
        render(view: 'dashboard',model: [numberInCart: 0,messageStatus:"Order Confirmed",message: "Featured Products" ,categoryList:Category.list(),productList:Product.list() ,productbrands: brands()])
        }


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Product.list(params), model:[productInstanceCount: Product.count()]
//        render(view: 'index', Product.list(params) ,model: [productInstanceCount: Product.count()])

    }

    def show(Product productInstance) {
        respond productInstance
    }

    def create() {
        respond new Product(params)
    }

    @Transactional
    def save(Product productInstance) {

        String path = "web-app/product/images/"
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("imageFile");

        def filePath = file.getOriginalFilename()
        filePath = System.currentTimeMillis().toString()+"_"+filePath
        file.transferTo(new File(path+filePath))

        productInstance.image = filePath


        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'create'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*' { respond productInstance, [status: CREATED] }
        }
    }

    def edit(Product productInstance) {
        respond productInstance
    }

    @Transactional
    def update(Product productInstance) {
        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'edit'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*'{ respond productInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Product productInstance) {

        if (productInstance == null) {
            notFound()
            return
        }

        productInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
