class Contact < ApplicationRecord
	def author
		"Marcus Veloso"
	end

	def as_json(options)
		super(methods: :author, root: true)		
	end
end
