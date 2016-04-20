require 'spec_helper'

describe 'ansible-csp-reporter::default' do

  describe package('/data/www/csp-reporter') do
    it { should be_installed.by('npm') }
  end

  describe cron do
    it { should have_entry'/etc/cron.d'.with_user('www-data') }
  end

end
