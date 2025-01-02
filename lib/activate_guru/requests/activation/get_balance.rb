# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class GetBalance < Base
        def build_response_object(object)
          balance = object.split(":").last.to_d
          Structs::Balance.new(balance:)
        end
      end
    end
  end
end
