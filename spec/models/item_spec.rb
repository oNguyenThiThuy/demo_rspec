require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '.belongs_to_category' do
    # before { allow_any_instance_of(Item).to receive(:create_item_on_third_party).and_return(true) }

    let(:category) { FactoryBot.build_stubbed(:category) }
    let!(:item) { FactoryBot.create(:item, category_ids: '') }
    
    context 'when exists items, that belong to category' do
      let!(:item1) { FactoryBot.create(:item, category_ids: category.id) }
      it 'return items' do
        expect(Item.belongs_to_category(category.id)).to eq [item1]
      end
    end

    context 'when does not exist any items with the category' do
      it 'return empty array' do
        expect(Item.belongs_to_category(category.id)).to eq []
      end
    end
  end
end