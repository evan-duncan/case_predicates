# frozen_string_literal: true

require_relative './case_predicates/version'
require_relative './case_predicates/is_a'

module CasePredicates
  class Error < StandardError; end

  include IsA
end
