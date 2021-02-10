# frozen_string_literal: true

module CasePredicates
  # IsA includes predicate methods for type checks
  #
  # @example
  #   v = "foo"
  #   case v
  #   when string?
  #     puts "it's a string"
  #   else
  #     raise "on no!"
  #   end
  module IsA
    TYPES = {
      array: Array,
      complex: Complex,
      dir: Dir,
      enumerable: Enumerable,
      false => FalseClass,
      fiber: Fiber,
      file: File,
      float: Float,
      hash: Hash,
      io: IO,
      integer: Integer,
      module: Module,
      mutex: Mutex,
      nil: NilClass,
      numeric: Numeric,
      object: Object,
      proc: Proc,
      queue: Queue,
      random: Random,
      range: Range,
      rational: Rational,
      regexp: Regexp,
      string: String,
      struct: Struct,
      symbol: Symbol,
      thread: Thread,
      time: Time,
      true => TrueClass
    }.freeze

    TYPES.each do |type, klass|
      define_method(:"#{type}?") do
        ->(v) { v.is_a? klass }
      end
    end
  end
end
