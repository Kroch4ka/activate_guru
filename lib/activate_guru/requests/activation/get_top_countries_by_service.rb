# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetTopCountriesByService < Base
        attribute :service, Types::Params::String
        attribute :free_price?, Types::Params::String.optional

        def build_response_object(object)
          object.entries.map do |k, v|
            Structs::Requests::Activation::GetTopCountriesByService.new(**v)
          end
        end
      end
    end
  end
end
