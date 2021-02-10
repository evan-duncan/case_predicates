# frozen_string_literal: true

module CasePredicates
  RSpec.describe IsA do
    described_class::TYPES.each do |type, _|
      it "has a #{type}? method" do
        expect(subject.instance_methods).to include("#{type}?".to_sym)
      end
    end
  end
end
