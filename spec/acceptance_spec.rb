require 'rspec/given'
require 'ian_strscan'

describe 'Acceptance Test' do
  Given(:s) { IanStrscan.new('This is an example string') }
  Then { false     == s.eos?        }
  And  { "This"    == s.scan(/\w+/) }
  And  { nil       == s.scan(/\w+/) }
  And  { " "       == s.scan(/\s+/) }
  And  { nil       == s.scan(/\s+/) }
  And  { "is"      == s.scan(/\w+/) }
  And  { false     == s.eos?        }
  And  { " "       == s.scan(/\s+/) }
  And  { "an"      == s.scan(/\w+/) }
  And  { " "       == s.scan(/\s+/) }
  And  { "example" == s.scan(/\w+/) }
  And  { " "       == s.scan(/\s+/) }
  And  { "string"  == s.scan(/\w+/) }
  And  { true      == s.eos?        }
  And  { nil       == s.scan(/\s+/) }
  And  { nil       == s.scan(/\w+/) }
end
