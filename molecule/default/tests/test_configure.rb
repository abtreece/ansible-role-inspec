control 'configure-nginx-1.0' do
  impact 0.7
  title 'Ensure openresty configuration is in place'
  desc 'Ensure openresty configuration is in place'

  describe file('/usr/local/openresty/nginx/conf/nginx.conf') do
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode') { should cmp '0644' }
    its('content') { should match /user nginx;/ }
    its('content') { should match /gzip on;/ }
    its('content') { should match /ssl_protocols TLSv1.2;/ }
  end
end
