package grails_ecommerce

class OrderEcommerce {
    String name
    String email
    String mobileNumber
    String phoneNumber
    String address
    Product productName
    String status
    Date dateOfOrder

    static constraints = {
        name(nullable: false)
        email(email: true)
        mobileNumber(nullable: false)
        phoneNumber(nullable: true)
        address(nullable: false)
        productName()
        status(inList: ["Pending","Delivered"])
        dateOfOrder()
    }
}
