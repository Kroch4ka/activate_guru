# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Activation
      class ParseCall < Base
        attribute :id, Types::Params::Integer
        attribute :new_lang, Types::Params::String

        def build_response_object(object) = Structs::Result.new(**object)
      end
    end
  end
end
