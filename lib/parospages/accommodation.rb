class ParosPages::accomodation
	attr_accessor :name, :url, :type
	def  self.show
		self.scrape_accommodation
	end

	def self.scrape_accommodation
		accommodations - []
		

		accommodations
	end

end