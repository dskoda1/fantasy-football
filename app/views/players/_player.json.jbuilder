json.extract! player, :id, :name, :position_id, :created_at, :updated_at
json.url player_url(player, format: :json)