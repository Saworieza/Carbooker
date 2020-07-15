class Car < ApplicationRecord
	validates :name, presence: true, uniqueness: true  
	has_many :stores, :through => :store_cars  
	has_many :store_cars, :dependent => :destroy
end
