class AddFavoriteToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :favorite, :string
  end
end
