# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :score
      t.string :player

      t.timestamps
    end
  end
end
