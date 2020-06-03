require "roda"
require "sequel"
require_relative 'serializers/ad_serializer'

database = "ads_development"
user     = ENV["PGUSER"]
password = ENV["PGPASSWORD"]
DB = Sequel.connect(adapter: "postgres", database: database, host: "127.0.0.1", user: user, password: password)
require_relative 'models/ad'

class App < Roda
  plugin :json, classes: [Array, Hash, Sequel::Model], content_type: 'application/json'
  plugin :json_parser
  plugin :symbol_status

  route do |r|
    r.on "api/v1/ads" do
  # route('ads', 'api/v1') do |r|
      r.get do
        Ad.all.to_json
      end

      r.post do
        ad = Ad.new(r.params['ad'])
        ad.user_id = r.params['user_id']
        if ad.valid? && ad.save    
          response.status = 200
          AdSerializer.new(ad).serialized_json
          # ad.to_json 
        else
          response.status = 422
          ad.errors.to_json
        end
      end
    end
  end
end
