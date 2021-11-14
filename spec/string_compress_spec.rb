# frozen_string_literal: true

RSpec.describe '.string_compression' do
  {
    'aabcccccaaa' => 'a2b1c5a3',
    'abcdefg' => 'abcdefg', # string becomes longer than initial, so return initial
    'ooooooooooooooooooooo' => 'o21',
    'This is amazing world. Woooohooooooooooooooooooooooooooooooooooooooo!' => 'T1h1i1s1 1i1s1 1a1m1a1z1i1n1g1 1w1o1r1l1d1.1 1W1o4h1o39!1',
    '12333344455' => '1121344352'
  }.each do |input, expected_output|
    context "when #{input}" do
      it "is compressed to #{expected_output}" do
        expect(string_compress(input)).to eq(expected_output)
      end
    end
  end
end

