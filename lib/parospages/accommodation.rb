class ParosPages::accomodation
	attr_accessor :name, :url, :type
	def  self.show
		self.scrape_accommodation
	end

	def self.scrape_accommodation
		accommodations - []
		
		accommodations << self.scrape_parospages
		accommodations 
	end
	def self.scrape_parospages
		doc = Nokogiri::HTML(open("https://www.parospages.com/en/accommodations"))
	end
end