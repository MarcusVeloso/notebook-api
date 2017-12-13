class Contact < ApplicationRecord
	belongs_to :kind

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
end
