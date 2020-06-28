class Application < Roda
  plugin :environments
  plugin :symbolized_params
  plugin :class_level_routing
  # plugin :multi_route
  # plugin :json, classes: [Array, Hash, Sequel::Model], content_type: 'application/json'
  plugin :json_parser
  plugin :symbol_status
end