class AddPictureToUsertests < ActiveRecord::Migration
  def change
    add_column :usertests, :picture, :string
  end
end
