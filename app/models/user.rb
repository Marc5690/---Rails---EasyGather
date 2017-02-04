class User < ActiveRecord::Base

	#attr_accessible  :fname, :lname, :email, :password, :profile_image, :profile_text, :gather_points, :privacy
    has_and_belongs_to_many  :gatherings


end
