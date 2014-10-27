import edq.presales.aq.AQ
import edq.presales.aq.Product
import edq.presales.aq.Question
import edq.presales.aq.Solution

class BootStrap {

    def init = { servletContext ->
		def proweb = new Product(name: "Pro Web", productVersion: 6.48).save(flush: true)
		def ajaxBp = new Solution(name: "Ajax BP V5", product: proweb).save(flush: true)
		def q1 = new Question(solution: ajaxBp, type: "text", question: 'Programming Language') .save(flush:true)
		def q2 = new Question(solution: ajaxBp, type: "text", question: 'Operating System').save(flush:true)
		def aq = new AQ(solution: ajaxBp).save(flush:true)
		
    }
    def destroy = {
    }
}
