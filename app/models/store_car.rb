class StoreCar < ApplicationRecord
	validates_uniqueness_of :car_id, :scope => [:store_id]  
  belongs_to :store
  belongs_to :car
end
