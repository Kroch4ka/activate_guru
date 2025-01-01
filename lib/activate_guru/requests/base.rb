# frozen_string_literal: true

module ActivateGuru
  module Requests
    class Base < SymbolizedStruct
      def uri = ""
      def http_method = :get
      def params = {}
      def build_response_object(_object) = raise NotImplementedError
    end
  end
end
