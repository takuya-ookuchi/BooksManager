class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, limit: 50, null: false

      t.timestamps
    end
  end
end
