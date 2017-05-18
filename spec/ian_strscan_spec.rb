require 'rspec/given'
require 'ian_strscan'

describe 'IanStrscan init' do
  Given(:subject) { IanStrscan.new("abc def") }
  Then { raise_error != subject }
end

describe 'IanStrscan eos?' do
  context 'when string is not empty' do
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new string }
    Then { false == subject.eos? }
  end
end
