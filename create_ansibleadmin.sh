# Create ansibleadmin in Ansible Sever
sudo yum install docker -y
useradd ansibleadmin
echo ansibleadmin:admin123 | chpasswd
sudo usermod -aG docker ansibleadmin
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload

# Create SSH key in Ansible Server
ssh-keygen

# Install Ansible in Ansible Server
sudo amazon-linux-extras install ansible2


# Create ansibleadmin in Docker Sever
useradd ansibleadmin
echo ansibleadmin:admin123 | chpasswd
sudo usermod -aG docker ansibleadmin
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload

# Create dockeradmin in Docker Sever
useradd dockeradmin
echo dockeradmin:admin123 | chpasswd
sudo usermod -aG docker dockeradmin
echo "dockeradmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload
