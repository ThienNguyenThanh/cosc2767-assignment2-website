# Create ansibleadmin in Ansible Sever
useradd ansibleadmin
echo ansibleadmin:admin123 | chpasswd
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload

# Create SSH key
ssh-keygen

# Install Ansible
sudo su -
amazon-linux-extras install ansible2


# Create ansibleadmin in Docker Sever
useradd ansibleadmin
echo ansibleadmin:admin123 | chpasswd
usermod -aG docker ansibleadmin
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload
