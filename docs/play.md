ansible-playbook -i inventory.yaml playbook.yaml

# SSH Setup and Testing

## Generate SSH Key
```bash
ssh-keygen -t rsa -b 4096
```

## Copy SSH Key to Remote Machine
```bash
ssh-copy-id user@remote-machine-ip
```

## Test SSH Connection
```bash
ssh user@remote-machine-ip
```

## Test Ansible Connection
```bash
ansible all -i remote-machine-ip, -m ping -u user
```

## Install Ansible (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install software-properties-common
sudo apt install ansible
```

## Verify Installation
```bash
ansible --version
```

## Install additional packages
```bash
brew install ansible ansible-lint yamllint
pip install molecule molecule-docker
```

## Run molecule test
```bash
cd tests/local-machine
molecule test
```