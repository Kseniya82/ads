module ApiErrors
  
  def error_response(error_messages)
    errors =
      case error_messages
      when Sequel::Model
        ErrorSerializer.from_model(error_messages)
      else
        ErrorSerializer.from_messages(error_messages)
      end

    JSON errors
  end

  # error Sequel::NoMatchingRow do
  #   response.status 404
  #   error_response I18n.t(:not_found, scope: 'api.errors')
  # end

  # error Sequel::UniqueConstraintViolation do
  #   response.status 422
  #   error_response I18n.t(:not_unique, scope: 'api.errors')
  # end

  # error Validations::InvalidParams, KeyError do
  #   response.status 422
  #   error_response I18n.t(:missing_parameters, scope: 'api.errors')
  # end
end