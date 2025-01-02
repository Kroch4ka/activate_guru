# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Reference
      class GetServicesList < Base
        def build_response_object(object) = Structs::Requests::Reference::GetServicesList.new(**object)
      end
    end
  end
end
