# frozen_string_literal: true

control 'nginx-service-1.0' do
  impact 0.7
  title 'Ensure nginx service is running and enabled'
  desc 'Ensure nginx service is running and enabled'

  # openresty does not play well with containers
  only_if { virtualization.system != 'docker' }

  describe service('nginx') do
    it { should be_running }
    it { should be_enabled }
  end
end
