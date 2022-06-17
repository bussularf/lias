class Product < ApplicationRecord
  attr_accessor :name, :price, :description
  validates :name, presence: true
end
