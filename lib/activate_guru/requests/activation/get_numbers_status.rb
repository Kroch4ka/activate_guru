# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetNumbersStatus < Base
        attribute :country, Types::Params::Integer
        attribute :operator, Types::Params::String

        def build_response_object(object)
          object.entries.map do |k, v|
            code, redirection = k.split("_")
            Structs::Requests::Activation::GetNumbersStatus.new({ code:, redirection:, count: v.to_i })
          end
        end
      end
    end
  end
end
