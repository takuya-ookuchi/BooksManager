class ChangeUsersFuriganaNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :furigana, false
  end
end
