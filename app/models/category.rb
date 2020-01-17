class Category < ApplicationRecord
  has_many :items
  # def items
  #   Item.where("category_ids LIKE ?", "%#{id}%")
  # end
end
