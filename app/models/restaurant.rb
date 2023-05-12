class Restaurant < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    has_and_belongs_to_many :items
    has_and_belongs_to_many :dishes
    
end
