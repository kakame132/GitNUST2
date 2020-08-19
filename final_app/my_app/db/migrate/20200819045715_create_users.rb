class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string "first_name", limit: 30
      t.string "last_name", limit: 30
      t.string "email"
      t.string "password", limit: 30
      t.boolean "admin", default: false
      t.timestamps
    end
  end
end
