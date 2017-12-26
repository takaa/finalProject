class AddUserIdToUsertests < ActiveRecord::Migration
  def change
    add_column :usertests, :user_id, :integer
  end
end
