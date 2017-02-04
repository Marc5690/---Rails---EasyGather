require 'net/http'
require 'json'
require 'foursquare2'
require 'oauth2'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class FoursquareController < ApplicationController
  def auth
    @code = params[:code]
    @token = Net::HTTP.get(URI.parse( "https://foursquare.com/oauth2/access_token" +
                      "?client_id=placeyourclientidhere" +
                      "&client_secret=placeyourclientsecrethere" +
                      "&grant_type=authorization_code" +
                      "&redirect_uri=http://easygather.cfapps.io/foursquare/auth" +
                      "&code=" + @code))
    @auth_user = User.find(1)
    @jason = JSON.parse(@token)
    @auth_user.update_attributes(:name)
    @auth_user.update_attributes(:password => @jason["access_token"])

  end

  def check_ins
  	client = Foursquare2::Client.new(:oauth_token => 'youroauthcode')
  	client.add_checkin(:venueId => "yourvenueid")
   	@auth_user = User.find(1)
  	@auth_user.gather_points += 1
  	@auth_user.save
  	@auth_user.update_attributes(:lname => params[:user].to_s)
	@auth_user.update_attributes(:fname => params[:type].to_s)
	@auth_user.update_attributes(:profile_image => params[:id].to_s)
	@auth_user.update_attributes(:profile_text => params[:timeZoneOffset].to_s)
  end
  
end