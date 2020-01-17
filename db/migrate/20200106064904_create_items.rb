class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :category_ids
      t.string :name

      t.timestamps
    end
  end
end
