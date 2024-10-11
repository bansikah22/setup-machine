ansible-playbook -i inventory.yml playbook.yml

### Generating ssh key to test with remote machine authentication
```bash
ssh-keygen -t rsa -b 4096
#copy ssh-key to the remote machine
ssh-copy-id ubuntu@10.214.138.21
#Test connection
ssh ubuntu@10.214.138.21
```
## configure remote machine 
```bash
cat ~/.ssh/id_rsa.pub# on machine where the ansible script is located
#on remote machine
mkdir -p ~/.ssh
echo "your-public-key-content" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
#Test connection on your machine not remote
ssh ubuntu@10.214.138.21
ansible all -i 10.214.138.21, -m ping -u ubuntu
```

## Ansible installation
```bash
sudo apt update
sudo apt install software-properties-common
sudo apt install software-properties-common
sudo apt install ansible
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04

##debugging
sudo apt --fix-broken install
sudo apt update
sudo apt-get install python3-packaging python3-pycryptodome python3-dnspython python3-netaddr
sudo apt-get install ansible
ansible --version

```