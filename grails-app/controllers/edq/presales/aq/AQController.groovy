package edq.presales.aq



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AQController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AQ.list(params), model:[AQInstanceCount: AQ.count()]
    }

    def show(AQ AQInstance) {
        respond AQInstance
    }

    def create() {
        respond new AQ(params)
    }

    @Transactional
    def save(AQ AQInstance) {
        if (AQInstance == null) {
            notFound()
            return
        }

        if (AQInstance.hasErrors()) {
            respond AQInstance.errors, view:'create'
            return
        }

        AQInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'AQ.label', default: 'AQ'), AQInstance.id])
                redirect AQInstance
            }
            '*' { respond AQInstance, [status: CREATED] }
        }
    }

    def edit(AQ AQInstance) {
        respond AQInstance
    }

    @Transactional
    def update(AQ AQInstance) {
        if (AQInstance == null) {
            notFound()
            return
        }

        if (AQInstance.hasErrors()) {
            respond AQInstance.errors, view:'edit'
            return
        }

        AQInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AQ.label', default: 'AQ'), AQInstance.id])
                redirect AQInstance
            }
            '*'{ respond AQInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AQ AQInstance) {

        if (AQInstance == null) {
            notFound()
            return
        }

        AQInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AQ.label', default: 'AQ'), AQInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'AQ.label', default: 'AQ'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
