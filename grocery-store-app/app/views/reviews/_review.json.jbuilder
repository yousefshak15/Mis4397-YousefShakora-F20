json.extract! review, :id, :note, :store_id, :created_at, :updated_at
json.url review_url(review, format: :json)
