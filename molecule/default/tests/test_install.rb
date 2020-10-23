# frozen_string_literal: true

control 'install-nginx-1.0' do
  impact 0.7
  title 'Ensure NGINX package is installed'
  desc 'Ensure NGINX package is installed'

  describe package('nginx') do
    it { should be_installed }
  end
end
