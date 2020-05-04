class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :admin_user_id
      t.string :title
      t.text :reviews_body
      t.timestamps
    end
  end
end
