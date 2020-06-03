require 'fast_jsonapi'
class AdSerializer
  include FastJsonapi::ObjectSerializer

  attribute :title, :description, :city, :lat, :lon, :created_at, :updated_at
end