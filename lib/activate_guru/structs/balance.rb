# frozen_string_literal: true

module ActivateGuru
  module Structs
    class Balance < SymbolizedStruct
      attribute :balance?, Types::Params::Float
    end
  end
end
