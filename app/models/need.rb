class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source, :country, :state, :city
  belongs_to :category
end
