require 'grape'

module App

	class Dat < Grape::API
		 version '1'
      	format :json

		resource :users do
        desc "Return list of users"
        get do
          User.all
        end
      end

	end
end