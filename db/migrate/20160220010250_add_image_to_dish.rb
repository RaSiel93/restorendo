class AddImageToDish < ActiveRecord::Migration
  def up
    add_attachment :dishes, :image
  end

  def down
    remove_attachment :dishes, :image
  end
end
