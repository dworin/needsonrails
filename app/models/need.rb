class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source, :country, :state, :city
  belongs_to :category
  
  def address
  	return "#{city}, #{state}, #{country}"
  end

  geocoded_by :address
  after_validation :geocode
end

def self.to_csv
	CSV.generate do |csv|
		csv << column_names
		all.each do |need|
			csv << need.attributes.values_at(*column_names)
		end
	end
end