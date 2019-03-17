require 'scrabble'

RSpec.describe Scrabble do

  subject(:scrabble) { Scrabble.new }

  describe '#score' do
    it 'takes an argument and returns an integer' do
      expect(scrabble.score('')).to be_an(Integer)
    end

    it 'returns 1 for a' do
      expect(scrabble.score('a')).to eq(1)
    end

    it 'returns 1 for A' do
      expect(scrabble.score('A')).to eq(1)
    end

    it 'returns 1 for E' do
      expect(scrabble.score('E')).to eq(1)
    end

    it 'returns 2 for D' do
      expect(scrabble.score('D')).to eq(2)
    end
  end

  it 'returns 3 for da' do
    expect(scrabble.score('da')).to eq(3)
  end

  it 'returns 41 for OXYPHENBUTAZONE' do
    expect(scrabble.score('OXYPHENBUTAZONE')).to eq(41)
  end
end
