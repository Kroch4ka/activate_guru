# frozen_string_literal: true

module ActivateGuru
  module Structs
    class Service < SymbolizedStruct
      attribute :code?, Types::Params::String.optional
      attribute :name?, Types::Params::String.optional
    end
  end
end
