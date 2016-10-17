class AddIndexToDraftRecords < ActiveRecord::Migration[5.0]
  def change
      add_index :draft_records, [:player_id, :team_id], unique: true
  end
end
