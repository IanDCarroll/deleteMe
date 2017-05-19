require 'rspec/given'
require 'ian_strscan'

describe 'Ianstrscan init' do
  Given(:subject) { IanStrscan.new('abc def') }
  Then { raise_error != subject }
end
