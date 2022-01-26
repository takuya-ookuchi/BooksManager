class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 10, null: false

      t.timestamps
      t.index :name, unique: true
    end
  end
end
