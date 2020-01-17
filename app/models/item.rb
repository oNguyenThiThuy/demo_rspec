class Item < ApplicationRecord
  scope :belongs_to_category, -> (category_id) { where("category_ids LIKE ?", "%#{category_id}%") }

  # after_create :create_item_on_third_party

  # def create_item_on_third_party
  #   #call_api
  #   puts "create"
  # end
end
