class Item < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true
    validates :callories, presence: true
    belongs_to :dish
    has_and_belongs_to_many :restaurants
end
