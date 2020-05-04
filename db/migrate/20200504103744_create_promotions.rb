class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :promotion_terms
      t.timestamps
    end
  end
end
