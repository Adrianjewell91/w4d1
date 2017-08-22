class RemoveEmail < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :email
  end

    add_index :users, :name, unique: true
end
