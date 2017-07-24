json.extract! tourney, :id, :name, :start_time, :created_at, :updated_at
json.url tourney_url(tourney, format: :json)
