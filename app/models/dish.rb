class Dish < ApplicationRecord
    validates :name, presence: true
    has_many :items
    has_and_belongs_to_many :restaurants
end