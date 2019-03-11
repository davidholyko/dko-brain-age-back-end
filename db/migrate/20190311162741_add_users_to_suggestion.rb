class AddUsersToSuggestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :suggestions, :suggestion, foreign_key: true
  end
end
