class Parospages::CLI
	def call
		puts "Recommended accommodation in Paros Island "	
		show_list
		menu
		goodbye
	end
	def show_list
		puts "test list"	
	end
	def menu
	puts "Enter the number of the accommodation you want more info:"
		input = nil
		while input != "exit "
		input = gets.strip.downcase 
			case input
				when "1"
					puts "more info on 1"
				when "2"
					puts "more info on 2"
			end
		end
	end
	def goodbye
		puts "See you later! "
	end
end