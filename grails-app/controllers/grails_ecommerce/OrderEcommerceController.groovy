package grails_ecommerce



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrderEcommerceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OrderEcommerce.list(params), model:[orderEcommerceInstanceCount: OrderEcommerce.count()]
    }

    def show(OrderEcommerce orderEcommerceInstance) {
        forward(action: 'index')
    }

    def create() {
        respond new OrderEcommerce(params)
    }

    @Transactional
    def save(OrderEcommerce orderEcommerceInstance) {
        if (orderEcommerceInstance == null) {
            notFound()
            return
        }

        if (orderEcommerceInstance.hasErrors()) {
            respond orderEcommerceInstance.errors, view:'create'
            return
        }

        orderEcommerceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderEcommerce.label', default: 'OrderEcommerce'), orderEcommerceInstance.id])
                redirect orderEcommerceInstance
            }
            '*' { respond orderEcommerceInstance, [status: CREATED] }
        }
    }

    def edit(OrderEcommerce orderEcommerceInstance) {
        respond orderEcommerceInstance
    }

    @Transactional
    def update(OrderEcommerce orderEcommerceInstance) {
        if (orderEcommerceInstance == null) {
            notFound()
            return
        }

        if (orderEcommerceInstance.hasErrors()) {
            respond orderEcommerceInstance.errors, view:'edit'
            return
        }

        orderEcommerceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OrderEcommerce.label', default: 'OrderEcommerce'), orderEcommerceInstance.id])
                redirect orderEcommerceInstance
            }
            '*'{ respond orderEcommerceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OrderEcommerce orderEcommerceInstance) {

        if (orderEcommerceInstance == null) {
            notFound()
            return
        }

        orderEcommerceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OrderEcommerce.label', default: 'OrderEcommerce'), orderEcommerceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderEcommerce.label', default: 'OrderEcommerce'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
