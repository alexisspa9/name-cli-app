class ParosPages::accomodation
	attr_accessor :name, :url, :type
	def  self.test
		accomodation_one = self.new
		accomodation_one.name = 'Armenistis'
		accomodation_one.url = "google.com"
		accomodation_one.type = "villa "
	end

end