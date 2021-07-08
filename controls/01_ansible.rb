# copyright: 2019, Ali Muhammad

title "Compliance: Ansible"

control "ansible-01" do
  impact 0.7
  title "Check Ansible file."
  desc "Control to check for ansible executable file."
  describe command('which ansible') do
    its('exit_status') { should eq 0 }
  end
end

control "ansible-02" do
  impact 0.7
  title "Verify ansible version check."
  desc "Control to check whether ansible version command is successful."

  describe command('ansible --version') do
    its('exit_status') { should eq 0 }
  end
end

control "ansible-03" do
  impact 0.7
  title "Verify ansible local run."
  desc "Control to check whether ansible local run is successful."

  describe command('ansible localhost -m ping') do
    its('exit_status') { should eq 0 }
  end
end
