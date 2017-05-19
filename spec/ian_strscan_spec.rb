require 'rspec/given'
require 'ian_strscan'

describe 'IanStrscan init' do
  Given(:example) { IanStrscan.new('abc def') }
  Then { raise_error != example }
end

describe 'IanStrscan eos?'do
  context 'when string is not empty' do
    Given(:string) { "abc_def" }
    When(:subject) { IanStrscan.new(string) }
    Then { false == subject.eos? }
  end
end
