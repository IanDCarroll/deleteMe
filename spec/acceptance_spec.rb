require "ian_strscan"
require "spec_helper"

describe 'Acceptance spec' do
  it 'implelements the interface shown in the StringScanner spec' do
    s = IanStrscan.new('This is an example string')
    expect(s.eos?).to be false
    
    expect(s).to find("This").when_scanned_with(/\w+/)
    expect(s).to find(nil   ).when_scanned_with(/\w+/)
    expect(s).to find(" "   ).when_scanned_with(/\s+/)
    expect(s).to find(nil   ).when_scanned_with(/\s+/)
    expect(s).to find("is"  ).when_scanned_with(/\w+/)
    expect(s.eos?).to be false
    
    expect(s).to find(" "      ).when_scanned_with(/\s+/)
    expect(s).to find("an"     ).when_scanned_with(/\w+/)
    expect(s).to find(" "      ).when_scanned_with(/\s+/)
    expect(s).to find("example").when_scanned_with(/\w+/)
    expect(s).to find(" "      ).when_scanned_with(/\s+/)
    expect(s).to find("string" ).when_scanned_with(/\w+/)
    expect(s.eos?).to be true
    
    expect(s).to find(nil).when_scanned_with(/\s+/)
    expect(s).to find(nil).when_scanned_with(/\w+/)
  end
end
