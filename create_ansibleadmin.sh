useradd ansibleadmin
echo ansibleadmin:admin123 | chpasswd
echo "ansibleadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd reload
