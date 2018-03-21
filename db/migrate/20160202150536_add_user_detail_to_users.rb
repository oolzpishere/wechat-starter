class AddUserDetailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :sex, :integer
    add_column :users, :avatar, :string
    add_column :users, :unionid, :string

    add_index :users, :unionid,                unique: true
  end
end
