class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source, :country, :state, :city
  belongs_to :category
  
  def address
  	return "#{city}, #{state}, #{country}"
  end

  geocoded_by :address
  after_validation :geocode
end
