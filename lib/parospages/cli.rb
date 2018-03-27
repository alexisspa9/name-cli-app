class Parospages::CLI
	def call
		puts "Recommended accommodation in Paros Island "	
		list
		menu
		goodbye
	end
	def list
		@accommodations = Parospages::Accommodation.show
		@accommodations.each.with_index(1) do |acco, i|
			puts "#{i}. #{acco.name} - #{acco.type}"
		end
	end
	def menu
		input = nil 
		while input != "exit"
			puts "Enter the number of the accommodation you want more info or list to show the list or exit:"
			input = gets.strip.downcase 
			if input.to_i > 0
				the_accommo = @accommodations[input.to_i - 1]
				puts "#{the_accommo.name} - #{the_accommo.type}"
			elsif input == list
				list
			else
				puts "Not sure what you mean type list or exit:"
			end
		end
	end
	def goodbye
		puts "See you later! "
	end
end