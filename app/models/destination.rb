class Destination < ApplicationRecord
  validates_presence_of :price, :name, :description
end
