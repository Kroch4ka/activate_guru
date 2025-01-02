# frozen_string_literal: true

module ActivateGuru
  module Structs
    module Requests
      module Activation
        class GetTopCountriesByService < SymbolizedStruct
          attribute :physical_total_count?, Types::Params::Integer
          attribute :physical_count_for_default_price?, Types::Params::Integer
          attribute :physical_price_map?, Types::Hash.map(Types::Coercible::Float, Types::Integer)
          attribute :retail_price?, Types::Params::Integer
          attribute :country?, Types::Params::Integer
          attribute :price?, Types::Params::Integer
          attribute :count?, Types::Params::Integer
        end
      end
    end
  end
end
