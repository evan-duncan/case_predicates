# frozen_string_literal: true

module CasePredicates
  module Enumerable
    def include?(item)
      ->(enumerable) { enumerable.include? item }
    end
  end
end
