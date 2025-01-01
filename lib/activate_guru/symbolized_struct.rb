# frozen_string_literal: true

module ActivateGuru
  class SymbolizedStruct < Dry::Struct
    transform_keys(&:to_sym)
  end
end
