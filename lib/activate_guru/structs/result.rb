# frozen_string_literal: true

module ActivateGuru
  module Structs
    class Result < SymbolizedStruct
      attribute :result?, Types::Params::String.optional
    end
  end
end
