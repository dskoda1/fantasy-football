class CreateDraftRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :draft_records do |t|
      t.integer :player_id
      t.integer :team_id

      t.timestamps
    end
  end
end
