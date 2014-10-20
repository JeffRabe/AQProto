package edq.presales.aq

class MultiChoiceQuestion extends AuditQuestion {

	static hasMany = [ answers : MultiChoiceAnswer ]
	
    static constraints = {
    }
}
