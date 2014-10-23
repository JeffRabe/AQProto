package edq.presales.aq

class Question {

	String question
	String type
	Solution solution
	
    static constraints = {
		question blank : false, nullable: false
		type inList: [ "text", "multiple-choice"]
		solution blank : false, nullable: false
    }
}
