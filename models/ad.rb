Sequel::Model.plugin :timestamps, update_on_create: true
Sequel::Model.plugin :validation_helpers
class Ad < Sequel::Model
  def validate
    super
    validates_presence :city
    validates_presence :title
    validates_presence :description
  end
end