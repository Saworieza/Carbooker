class Store < ApplicationRecord
	has_many :cars, :through => :store_cars  
	has_many :store_cars, :dependent => :destroy
end
