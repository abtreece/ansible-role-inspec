# frozen_string_literal: true

include_controls 'DevSec Nginx Baseline' do
  skip_control 'nginx-02'
  # We override the rate limiter so this test isn't valid
  skip_control 'nginx-07'
  # TODO: Look into allowing only necessary methods.
  skip_control 'nginx-14'
  skip_control 'nginx-15'
  # TODO: look into ensuring secure cookies via one of the methods at https://geekflare.com/httponly-secure-cookie-nginx/
  skip_control 'nginx-16'
  skip_control 'nginx-08'
  skip_control 'nginx-09'
  skip_control 'nginx-10'
  skip_control 'nginx-13'
end
