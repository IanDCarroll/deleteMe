require 'rspec/given'
require 'ian_strscan'

describe 'IanStrscan init' do
  Given(:example) { IanStrscan.new('abc def') }
  Then { raise_error != example }
end
