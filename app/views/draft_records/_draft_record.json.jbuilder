json.extract! draft_record, :id, :player_id, :team_id, :created_at, :updated_at
json.url draft_record_url(draft_record, format: :json)