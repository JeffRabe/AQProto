package edq.presales.aq

class AQ {

	Integer id
	String name
	String productName
	String version
	String[] questions
	
	
    static constraints = {
		id generator: 'hilo'
		name size: 1..500, blank: false
    }
}
