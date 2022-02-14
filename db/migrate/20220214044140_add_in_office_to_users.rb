class AddInOfficeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :in_office, :boolean, default: true, null: false
  end
end
