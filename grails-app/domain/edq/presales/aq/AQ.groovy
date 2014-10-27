package edq.presales.aq

class AQ {

	Integer id
	Solution solution
	//String version
	
	
    static constraints = {
		id generator: 'hilo'
		
		//solution nullable: false
    }
}
