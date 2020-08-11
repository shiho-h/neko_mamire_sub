class RenamePostCatImageColumnToCatImages < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cat_images, :post_cat_image, :image_id
  end
end
