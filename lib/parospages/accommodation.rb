class Parospages::Accommodation
	attr_accessor :name, :type
	def  self.show
		self.scrape_accommodation
	end

	def self.scrape_accommodation
		accommodations = []
		
		accommodations << self.scrape_parospages
		accommodations << self.scrape_parospages_simple
		accommodations 
	end
	def self.scrape_parospages
		doc = Nokogiri::HTML(open("https://www.parospages.com/en/accommodation-paros-antiparos"))
		accommodation = self.new
		accommodation.name = doc.search(".recommended-listing--long:first-of-type .recommended-listing__title").text
		accommodation.type = doc.search(".recommended-listing--long:first-of-type .recommended-listing__subtitle:last-of-type").text
		accommodation 
	end
		def self.scrape_parospages_simple
		doc = Nokogiri::HTML(open("https://www.parospages.com/en/accommodation-paros-antiparos"))
		accommodation = self.new
		accommodation.name = doc.search(".listing-small:first-of-type .listing-small__title").text
		accommodation.type = doc.search(".listing-small:first-of-type .listing-small__sub-title:last-of-type").text
		accommodation 
	end
end