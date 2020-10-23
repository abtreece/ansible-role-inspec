# frozen_string_literal: true

control 'configure-nginx-1.0' do
  impact 0.7
  title 'Ensure NGINX configuration is in place'
  desc 'Ensure NGINX configuration is in place'

  describe file('/etc/nginx/nginx.conf') do
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode') { should cmp '0644' }
  end
end
