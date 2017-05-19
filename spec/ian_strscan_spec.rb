require 'rspec/given'
require 'ian_strscan'

describe 'IanStrscan initialize' do
  Given(:subject) { IanStrscan.new("abc def") }
  Then { raise_error != subject }
end

describe 'IanStrscan eos?' do
  context 'when the string is not empty' do
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new(string) }
    Then { false == subject.eos? }
  end

  context 'when the string is empty' do
    Given(:string) { "" }
    When(:subject) { IanStrscan.new(string) }
    Then { true == subject.eos? }
  end
end
