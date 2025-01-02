# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetNumberV2 < Base
        attribute :service, Types::String.optional
        attribute :forward, Types::String.optional
        attribute :operator, Types::String.optional
        attribute :ref, Types::String.optional
        attribute :country, Types::String.optional
        attribute :phone_exception, Types::String.optional
        attribute :max_price, Types::String.optional
        attribute :activation_type, Types::String.optional
        attribute :language, Types::String.optional
        attribute :user_id, Types::String.optional

        def additional_error_codes = ["ORDER_ALREADY_EXISTS"]

        def build_response_object(object) = Structs::Requests::Activation::GetNumberV2.new(**object)
      end
    end
  end
end
