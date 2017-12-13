class Contact < ApplicationRecord
	belongs_to :kind
	
	def author
		"Marcus Veloso"
	end

	def as_json(options)
		super(methods: :author, root: true)		
	end
end
