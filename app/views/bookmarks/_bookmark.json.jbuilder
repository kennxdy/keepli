json.extract! bookmark, :id, :title, :description, :link, :collection_id, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
