class AddRefForeinKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :photos, :users
    remove_foreign_key :albums, :users
    remove_column :photos, :user_id, :bigint
    remove_column :albums, :user_id, :bigint
    add_reference :photos, :user, index: true, foreign_key: true
    add_reference :albums, :user, index: true, foreign_key: true
  end
end
