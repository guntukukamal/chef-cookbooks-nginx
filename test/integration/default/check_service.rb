describe command('ps -ef | grep ngin[x]') do
  its('exit_status') { should eq 0 }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe package('nginx') do
  it { should be_installed }
end

describe command('curl http://localhost/') do
  its('exit_status') { should eq 0 }
  # its('stdout') { should match(/something/) }
end
