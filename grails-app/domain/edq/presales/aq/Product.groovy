package edq.presales.aq

class Product {

	Integer id;
	String name
	float productVersion
	
    static constraints = {
		id generator: 'hilo'
		name blank: false
		productVersion blank: false
    }
	
	/*
	static mapping = {
		
		productVersion "product_version"
	}
	*/
}
