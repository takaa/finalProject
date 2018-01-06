class AddCulumnsToUsertests < ActiveRecord::Migration
  def change
    add_column :usertests, :doing, :text
    add_column :usertests, :wants, :text
  end
end
