class DeleteMercuryImages < ActiveRecord::Migration
  def change
    drop_table :mercury_images
  end
end
