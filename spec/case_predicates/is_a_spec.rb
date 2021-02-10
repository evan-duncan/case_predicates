# frozen_string_literal: true

module CasePredicates
  RSpec.describe IsA do
    include IsA

    described_class::TYPES.each do |type, klass|
      it "has a #{type}? method" do
        expect(subject.instance_methods).to include("#{type}?".to_sym)
      end

      describe "#{type}?" do
        it "it matches a #{klass}" do
          case object type, klass
          when send("#{type}?".to_sym)
            expect(true).to be_truthy
          else
            raise 'Case did not match'
          end
        end
      end

      private

      def object(type, klass)
        klass.new
      rescue ThreadError
        klass.new {}
      rescue ArgumentError
        case type
        when :struct
          Struct.new(:foo).new('foo')
        when :regexp
          /foo/
        when :range
          (0..1)
        when :proc
          proc {}
        when :io
          IO.new(IO.sysopen('spec/test_file', 'r'))
        when :file
          File.new('spec/test_file', 'r')
        when :fiber
          Fiber.new {}
        when :dir
          Dir.new('spec')
        else
          raise "Argument Error: #{type} needs a test implemented"
        end
      rescue NoMethodError
        case type
        when :symbol
          :test
        when true
          true
        when :rational
          Rational(1)
        when :nil
          nil
        when :integer
          42
        when :float
          3.14
        when false
          false
        when :enumerable
          []
        when :complex
          Complex(0.3)
        else
          raise "NoMethodError: #{type} needs a test implemented"
        end
      end
    end
  end
end
