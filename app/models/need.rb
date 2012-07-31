class Need < ActiveRecord::Base
  attr_accessible :category_id, :latitude, :longitude, :needtext, :source
  belongs_to :category
end
