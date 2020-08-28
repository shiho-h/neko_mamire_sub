class RenameCatimagesToCatImages < ActiveRecord::Migration[5.2]
  def change
  	rename_table :catimages, :cat_images
  end
end
