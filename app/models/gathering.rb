class Gathering < ActiveRecord::Base

	 #attr_accessible name:, :company, :gather_level, :x_coords, :y_coords
	 has_and_belongs_to_many  :gatherings
	 
end
