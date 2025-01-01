# frozen_string_literal: true

module ActivateGuru
  module Structs
    module Requests
      module Reference
        class GetServicesList < SymbolizedStruct
          attribute :status?, Types::Params::String.optional
          attribute :services, Types::Array.of(Service).optional
        end
      end
    end
  end
end
