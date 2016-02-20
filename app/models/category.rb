class Category < ActiveRecord::Base
  belongs_to :restaurant
  has_many :dishes, dependent: :destroy
end
