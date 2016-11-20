Mime::Type.register "application/json", :json, %w( text/x-json application/jsonrequest application/vnd.api+json )
ActiveModel::Serializer.config.adapter = :json_api
