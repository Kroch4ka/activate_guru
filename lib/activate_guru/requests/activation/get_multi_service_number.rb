# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetMultiServiceNumber < Base
        attribute :multi_service, Types::String.optional
        attribute :multi_forward, Types::String.optional
        attribute :operator, Types::String.optional
        attribute :ref, Types::String.optional
        attribute :country, Types::String.optional

        def additional_error_codes = %w[NO_NUMBERS NO_BALANCE]

        def build_response_object(object) = Structs::Requests::Activation::GetMultiServiceNumber.new
      end
    end
  end
end
