class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source, :country, :state, :city
  belongs_to :category
  geocoded_by :city + ',' :state + ',' + :country
end
