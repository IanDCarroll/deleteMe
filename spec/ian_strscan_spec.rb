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

  context 'when string is empty' do
    Given(:string) { "" }
    When(:subject) { IanStrscan.new string }
    Then { true == subject.eos? }
  end
end

describe 'IanStrscan scan' do
  context 'when regex matches current possition' do
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new string }
    Then { "abc" == subject.scan(/\w+/) }
  end

  context 'when regex does not match current position' do
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new string }
    Then { nil == subject.scan(/\s+/) }
  end

  context 'when scan remembers its current position' do    
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new string }
    Then{ "abc" == subject.scan(/\w+/) }
    And { " " == subject.scan(/\s+/) }
    And { "def" == subject.scan(/\w+/) }
  end

  context 'when scan does not change the original string' do
    Given(:string) { "abc def" }
    When(:subject) { IanStrscan.new string }
    Then{ "abc" == subject.scan(/\w+/) }
    And { "abc def" == string }
  end
end
