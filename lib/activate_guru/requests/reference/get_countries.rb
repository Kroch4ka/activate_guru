# frozen_string_literal: true

module ActivateGuru
  module Requests
    module Reference
      class GetCountries < Base
        def params = { action: "getCountries" }

        def build_response_object(object)
          object.values.map { Structs::Country.new(**_1) }
        end
      end
    end
  end
end
