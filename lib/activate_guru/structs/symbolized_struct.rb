# frozen_string_literal: true

module ActivateGuru
  module Structs
    class SymbolizedStruct < Dry::Struct
      transform_keys { |key| key.to_s.underscore.to_sym }
    end
  end
end
