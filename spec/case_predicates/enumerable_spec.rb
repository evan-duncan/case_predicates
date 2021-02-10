# frozen_string_literal: true

require_relative '../../lib/case_predicates/enumerable'

module CasePredicates
  RSpec.describe Enumerable do
    include Enumerable

    let(:enumerable) { [:foo, :bar] }

    describe '#include?' do
      it 'matches a case where an enumerable includes a value' do
        case enumerable
        when include?(:foo)
          expect(true).to be_truthy
        else
          raise 'Case did not match'
        end
      end
    end
  end
end
