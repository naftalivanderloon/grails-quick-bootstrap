package testapp

class Person {

	String firstName
	String lastName
	String email
	Date dateOfBirth
	
    static constraints = {
		firstName blank: true
		lastName blank: false
		email nullable: true, email: true
		dateOfBirth nullable: true
    }}
