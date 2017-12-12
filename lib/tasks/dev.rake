namespace :dev do
  desc "Configura ambiente de desenvolvimento"
  task setup: :environment do

  	puts "Cadastrando contatos de teste..."
  	100.times do |i|
  		Contact.create!(
			name: Faker::Name.name,
			email: Faker::Internet.email,
			birthdate: Faker::Date.between(65.year.ago, 18.year.ago)
  			)
  	end
  	puts "Contatos de teste cadastrados com sucesso!"
  end
end