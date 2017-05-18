require 'ian_strscan'
require 'spec_helper'

describe IanStrscan do
  subject { IanStrscan.new('abc def') }

  it 'is initialized with the string to scan' do
    expect{ IanStrscan.new('abc def') }.not_to raise_error
  end

  describe 'eos?' do
    it 'returns false when there is content left in the string' do
      expect( subject.eos? ).to be false
    end

    it 'returns true when there is no content left in the string' do
      expect( IanStrscan.new('').eos? ).to be true
    end
  end

  describe 'scan' do
    it 'recieves a regex and returns the first match' do
      expect( subject ).to find('abc').when_scanned_with(/\w+/)
    end

    it 'returns nil when the regex doesn\'t match the beginning of the string' do
      expect( subject ).to find(nil).when_scanned_with(/\s+/)
    end

    it 'remembers its place in the string' do
       expect( subject ).to find('abc').when_scanned_with(/\w+/)
       expect( subject ).to find(' ').when_scanned_with(/\s+/)
       expect( subject ).to find('def').when_scanned_with(/\w+/)
    end

    it 'does not consume the original string' do
      string = 'abc def'
      IanStrscan.new(string).scan(/\w+/)
      expect( string ).to eq 'abc def'
    end
  end
end
