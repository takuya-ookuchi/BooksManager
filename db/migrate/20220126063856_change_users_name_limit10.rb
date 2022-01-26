class ChangeUsersNameLimit10 < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :name, :string, limit: 10
  end

  def down
    change_column :users, :name, :string
  end
end
