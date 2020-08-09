class CreateCatimages < ActiveRecord::Migration[5.2]
  def change
    create_table :catimages do |t|
      t.integer :user_id
      t.string :catname
      t.text :memo
      t.string :post_cat_image

      t.timestamps
    end
  end
end
