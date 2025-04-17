#!/bin/bash

# Define the VM name
VM_NAME="ansible-test"

# Create directory on the VM for the playbook
multipass exec $VM_NAME -- mkdir -p ~/ansible-setup

# Copy the entire setup-machine directory to the VM
echo "Copying playbook files to the VM..."
multipass transfer . $VM_NAME:~/ansible-setup/

# Install Ansible on the VM
echo "Installing Ansible on the VM..."
multipass exec $VM_NAME -- sudo apt update
multipass exec $VM_NAME -- sudo apt install -y ansible

# Create a local inventory file for the VM
echo "Creating local inventory file inside the VM..."
multipass exec $VM_NAME -- bash -c "echo 'localhost ansible_connection=local' > ~/ansible-setup/local_inventory.yml"

# Execute the playbook locally inside the VM
echo "Running Ansible playbook..."
multipass exec $VM_NAME -- bash -c "cd ~/ansible-setup && ansible-playbook -i local_inventory.yml linux-remote-setup/playbook.yml"

echo "Setup complete!"
