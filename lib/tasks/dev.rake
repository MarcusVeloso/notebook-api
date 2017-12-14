namespace :dev do
  desc "Configura ambiente de desenvolvimento"
  task setup: :environment do

    puts "Cadastrando tipos contatos de teste..."
      kinds = %w(Amigo xboxlive trabalho)
      kinds.each do |kind|
        Kind.create!(
            description: kind
          )
        end
    puts "Tipos deContato de teste cadastrados com sucesso!"

  	puts "Cadastrando contatos de teste..."
    	100.times do |i|
    		Contact.create!(
  			name: Faker::Name.name,
  			email: Faker::Internet.email,
  			birthdate: Faker::Date.between(65.year.ago, 18.year.ago),
        kind: Kind.all.sample 
    			)
    	end
  	puts "Contatos de teste cadastrados com sucesso!"    

    puts "Cadastrando telefones de teste..."

    Contact.all.each do |contact|
      Random.rand(5).times do |i|
        phone = Phone.create!(number: Faker::PhoneNumber.cell_phone)
        contact.phones << phone
        contact.save!
      end
    end
      puts "Telefones de teste cadastrados..."    
  end
end