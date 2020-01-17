FactoryBot.define do
  factory :item do
    sequence(:name) {|n| "item #{n}"}

    # after(:build) do |item|
    #   class << item
    #     def create_item_on_third_party
    #       true
    #     end
    #   end
    # end

    # trait :with_create_item_on_third_party do
    #   after(:build) do |item|
    #     class << item
    #       def create_item_on_third_party
    #           super
    #       end
    #     end
    #   end
    # end
  end
end