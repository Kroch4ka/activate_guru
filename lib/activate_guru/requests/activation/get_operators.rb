# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetOperators < Base
        attribute :country, Types::Params::Integer | Types::Params::String

        def build_response_object(object)
          balance = object.split(":").last.to_d
          Structs::Requests::Activation::GetBalanceAndCashBack.new(balance:)
        end
      end
    end
  end
end
