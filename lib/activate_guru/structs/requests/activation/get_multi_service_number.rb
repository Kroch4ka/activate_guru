# frozen_string_literal: true

module ActivateGuru
  module Structs
    module Requests
      module Activation
        class GetMultiServiceNumber < SymbolizedStruct
          attribute :activation_id, Types::Integer
          attribute :phone_number, Types::String
          attribute :activation_cost, Types::Coercible::Float
          attribute :country_code, Types::String
          attribute :can_get_another_sms, Types::String
          attribute :activation_time, Types::String
          attribute :activation_operator, Types::String
        end
      end
    end
  end
end
