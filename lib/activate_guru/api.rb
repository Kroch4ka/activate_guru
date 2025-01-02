# frozen_string_literal: true

module ActivateGuru
  class API
    include Dry::Configurable

    setting :api_key

    def call(request)
      response = connection.send(
        request.http_method,
        request.uri,
        request.params.merge({ api_key: config[:api_key] })
      )
      if request.error_codes.include?(response.body)
        return OpenStruct.new(headers: response&.headers, status: response.status, ok: false, error: response.body)
      end

      body = suppress(JSON::ParserError) { JSON.parse(response.body) } || response.body
      OpenStruct.new(
        headers: response.headers,
        result: build_response_object(request, body),
        raw: response.body,
        status: response.status,
        ok: true
      )
    rescue StandardError => e
      OpenStruct.new(headers: response&.headers, status: response.status, ok: false, error: e.message)
    end

    private

    def connection
      @connection ||= Faraday.new("https://api.sms-activate.ae/stubs/handler_api.php") do |f|
        f.request :json
        f.response :json
        f.response :raise_error
        f.response :logger
      end
    end

    def build_response_object(request, body)
      return body.map { request.build_response_object(_1) } if body.is_a?(Array)

      request.build_response_object(body)
    end
  end
end
