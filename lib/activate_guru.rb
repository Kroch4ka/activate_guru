# frozen_string_literal: true

require_relative "activate_guru/version"

require "zeitwerk"
require "dry-configurable"
require "faraday"
require "ostruct"
require "dry-struct"
require "byebug"
require "active_support"
require "active_support/core_ext"

loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/insulin.rb")
loader.inflector.inflect("api" => "API")
loader.setup

module ActivateGuru
end
