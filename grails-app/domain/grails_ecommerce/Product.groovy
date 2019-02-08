package grails_ecommerce

class Product {

    String productName
    double price
    String brand
    double discount
    String image
    Category categoryName
    int stock
    String description

    static constraints = {
        productName(nullable: false,maxSize: 50,minSize: 3)
        brand(nullable: false)
        price(nullable:false)
        discount(nullable:true)
        image(nullable: true)
        categoryName()
        stock()
        description(nullable: true)
    }

    String toString() {
        return productName
    }
}
