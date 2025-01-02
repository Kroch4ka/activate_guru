# frozen_string_literal: true

module ActivateGuru
  module Structs
    module Requests
      module Activation
        class GetNumbersStatus < SymbolizedStruct
          attribute :code?, Types::Params::String.optional
          attribute :redirection, Types::Params::Integer.optional
          attribute :count, Types::Params::Integer.optional
        end
      end
    end
  end
end
