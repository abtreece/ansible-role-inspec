control 'install-nginx-1.0' do
  impact 0.7
  title 'Ensure nginx package is installed'
  desc 'Ensure nginx package is installed'

  describe package('nginx') do
    it { should be_installed }
  end
end
