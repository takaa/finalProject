class RemoveNameFromUsertests < ActiveRecord::Migration
  def change
    remove_column :usertests, :name, :string
  end
end
