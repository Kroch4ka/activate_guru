# frozen_string_literal: true

module ActivateGuru
  module Structs
    class Country < SymbolizedStruct
      attribute :id?, Types::Params::Integer.optional
      attribute :rus?, Types::String.optional
      attribute :eng?, Types::String.optional
      attribute :chn?, Types::String.optional
      attribute :visible?, Types::Integer.optional
      attribute :retry?, Types::Integer.optional
      attribute :rent?, Types::Integer.optional
      attribute :multi_service?, Types::Integer.optional
    end
  end
end
