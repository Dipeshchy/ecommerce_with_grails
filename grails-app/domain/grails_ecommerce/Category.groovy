package grails_ecommerce

class Category {
    String categoryName
    String description

    static constraints = {
        categoryName(nullable: false,minSize: 3,maxSize: 30)
        description(nullable: true)
    }

    String toString() {
        return categoryName
    }
}
