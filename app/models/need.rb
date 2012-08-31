class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source, :country, :state, :city
  belongs_to :category
  
  def build_address
  	self.address = "#{city}, #{state}, #{country}"
  end
  
  geocoded_by :address
  after_validation :geocode
end
