package edq.presales.aq

class Solution {

	String name
	Product product
	
    static constraints = {
		name blank: false, nullable: false
		product blank: false, nullable: false
    }
}
