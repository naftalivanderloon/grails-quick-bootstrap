 package testapp

import org.springframework.dao.DataIntegrityViolationException

class PersonController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personInstanceList: Person.list(params), personInstanceTotal: Person.count()]
    }

    def create() {
   		switch (request.method) {
		case 'GET':
        	[personInstance: new Person(params)]
			break
		case 'POST':
	        def personInstance = new Person(params)
	        if (!personInstance.save(flush: true)) {
	            render view: 'create', model: [personInstance: personInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'person.label', default: 'Person'), personInstance.id])
	        redirect action: 'show', id: personInstance.id
			break
		}
    }

    def show() {
        def personInstance = Person.get(params.id)
        if (!personInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
            return
        }

        [personInstance: personInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def personInstance = Person.get(params.id)
	        if (!personInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [personInstance: personInstance]
			break
		case 'POST':
	        def personInstance = Person.get(params.id)
	        if (!personInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (personInstance.version > version) {
	                personInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'person.label', default: 'Person')] as Object[],
	                          "Another user has updated this Person while you were editing")
	                render view: 'edit', model: [personInstance: personInstance]
	                return
	            }
	        }

	        personInstance.properties = params

	        if (!personInstance.save(flush: true)) {
	            render view: 'edit', model: [personInstance: personInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'person.label', default: 'Person'), personInstance.id])
	        redirect action: 'show', id: personInstance.id
			break
		}
    }

    def delete() {
        def personInstance = Person.get(params.id)
        if (!personInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
            return
        }

        try {
            personInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
