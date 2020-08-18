class AddPasswordToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password, :string, limit:30
  end
end
