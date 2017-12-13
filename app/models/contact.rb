class Contact < ApplicationRecord
	belongs_to :kind

	def birthdate_br
		I18n.l(self.birthdate) unless self.birthdate.blank?					
	end

	def to_br
		 {name: self.name,
		  email: self.email,
		  birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?) }
	end

	# def author
	# 	"Marcus Veloso"
	# end

	# def kind_descpription
	# 	self.kind.description
	# end

	# def as_json(options)
	# 	super(
	# 		root: true,
	# 		methods: [:author, :kind_descpription],
	# 		include: { kind: { only: :description }}
	# 		)
	# end

	# def as_json(options)
	# 	super(
	# 		root: true,
	# 		methods: :author,			
	# 		include: :kind
	# 		)
	# end

	# def hello
	# 	I18n.t('hello')		
	# end

	# def i18n
	# 	I18n.default_locale		
	# end

end
