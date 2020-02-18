# frozen_string_literal: true

control 'openresty-smoketest-1.0' do
  impact 0.7
  title 'smoketests to ensure OpenResty is working'
  desc 'smoketests to ensure OpenResty is working'

  describe http('http://localhost') do
    its('status') { should cmp 200 }
    its('body') { should match /OpenResty/ }
    its('headers.Server') { should cmp 'openresty' }
    its('headers.Content-Type') { should cmp 'text/html' }
  end
end
