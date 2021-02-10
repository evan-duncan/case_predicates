require "case_predicates/version"
require 'case_predicates/is_a'

module CasePredicates
  class Error < StandardError; end

  include IsA
end
