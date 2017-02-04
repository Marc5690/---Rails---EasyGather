class Foursquare

	BASE_URL = 'https://api.foursquare.com/v2/'

	def initialize(neighborhood, filter)
		@neighborhood = neighborhood
		@filter = filter
	end

	def lat_lan
		coord = @neighborhood.coordinates.sample
		"#{coord.lat},#{coord.lan}"
	end

	def venue_search_url
		Base_URL + 'venues/explore?' + {
			client_id: Rails.application.secrets.foursquare_id,
			client_secret: Rails.application.secrets.foursquare_secret,
			limit: 50,
			ll: lat_lan,
			v: '20130118',
			m: 'swarm',
			openNow: true,
			section: @filter
		}.to_query
	end

	def connect
		Faraday.new(:url => Base_URL) do |faraday|
			faraday.response :logger
			faraday.adapter Faraday.default_adapter
		end
	end

	def establish_establishments
		get_establishments.map{ |i| i['venue'] }
	end

	def get_establishments
		venue = JSON.load(get_establishments_raw.body)
		venue.map{ |v| venue['response']['groups'].first['items'] }.flatten
	end

	def get_establishments_raw
		connect.get venue_search_url
	end

end
