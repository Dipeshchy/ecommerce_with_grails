package grails_ecommerce

class User {
    String username
    String name
    String password
    String role
    String email
    String address

    static constraints = {
        username(nullable: false,minSize: 3,maxSize: 15)
        password(nullable: false,minSize: 6,maxSize: 10)
        name(nullable: false,minSize: 3,maxSize: 20)
        role(inList: ["Admin","User"])
        email(email: true)
        address(nullable: true)
    }
}
