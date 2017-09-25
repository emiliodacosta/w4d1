class RemoveFavoriteFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :favorite, :string
  end
end
