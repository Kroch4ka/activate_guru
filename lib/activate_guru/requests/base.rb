# frozen_string_literal: true

module ActivateGuru
  module Requests
    class Base < Dry::Struct
      transform_keys(&:to_sym)

      def uri = ""
      def http_method = :get
      def params = { action:, **build_params }
      def action = self.class.name.demodulize.camelize(:lower)
      def build_params = to_h.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      def additional_error_codes = []
      def error_codes = ["BAD_ACTION"] + additional_error_codes
      def build_response_object(_object) = raise NotImplementedError
    end
  end
end
