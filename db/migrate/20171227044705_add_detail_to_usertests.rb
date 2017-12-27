class AddDetailToUsertests < ActiveRecord::Migration
  def change
    add_column :usertests, :detail, :text
  end
end
