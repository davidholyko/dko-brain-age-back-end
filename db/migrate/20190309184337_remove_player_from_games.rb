class RemovePlayerFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :player, :string
  end
end
