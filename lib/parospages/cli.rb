class Parospages::CLI
	def call
		puts "Recommended accommodation in Paros Island "	
		show_list
		menu
		goodbye
	end
	def show_list
		@accommodations = ParosPages::accommodation.test
	end
	def menu
	puts "Enter the number of the accommodation you want more info:"
		input = nil 
		while input != "exit"
		puts "Enter the number of the accommodation you want more info or list to show the list or exit:"
		input = gets.strip.downcase 
			case input
				when "1"
					puts "more info on 1"
				when "2"
					puts "more info on 2"
				when "list"
					show_list
				else
					puts "Not sure what you meean type list or exit:"
			end
		end
	end
	def goodbye
		puts "See you later! "
	end
end