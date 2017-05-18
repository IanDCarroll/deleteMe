# note that I hacked guard-rspec a bit to make it behave like I wanted in the video
#guard 'rspec', cmd: "--color --format nested --fail-fast --drb" do
#  watch('lib/ian_strscan.rb')        { 'spec/ian_strscan_spec.rb' }
#  watch('spec/spec_helper.rb')       { 'spec' }
#  watch('spec/acceptance_spec.rb')   { 'spec/acceptance_spec.rb' }
#  watch('spec/ian_strscan_spec.rb')  { 'spec/ian_strscan_spec.rb' }
#end

guard :rspec, cmd: 'rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
