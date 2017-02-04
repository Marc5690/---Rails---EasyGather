require 'grape'

class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json

  resource :users do
    get ':id/' do    
      @user = User.unscoped.find_by_id(params[:id])
      @user
	 end
  end

   resource :gatherings do
    get ':id/' do    
      @gathering = Gathering.unscoped.find_by_id(params[:id])
      @gathering
   end

   put ':id/' do    
      @gathering = Gathering.unscoped.find_by_id(params[:id])
      @gathering
      @gathering
   end
  end
  
end