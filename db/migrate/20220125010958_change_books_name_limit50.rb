class ChangeBooksNameLimit50 < ActiveRecord::Migration[6.1]
  def up
    change_column :books, :title, :string, limit: 50
  end

  def down
    changw_column :books, :title, :string
  end
end
