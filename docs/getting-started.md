# Getting Started with Setup Machine

This guide will help you set up your development environment using Ansible, whether you're configuring a local machine or a remote server.

## Prerequisites

- Ansible 2.9 or later
- Python 3.8 or later
- SSH access (for remote setup)
- sudo privileges (for local setup)

## Installation

1. Install Ansible:
```bash
pip install ansible
```

## Local Machine Setup

The local machine setup will configure your development environment with:
- Common development tools (git, zsh, curl, etc.)
- Node.js and npm
- Docker
- Oh My Zsh with Powerlevel10k theme
- Python virtualenv
- UFW firewall

To run the local setup:
```bash
ansible-playbook -i inventory/local-machine.ini playbooks/local-machine.yml
```

## Remote Machine Setup

The remote machine setup will configure a server with:
- Common development tools
- Node.js and npm
- Docker
- Oh My Zsh with Powerlevel10k theme
- Python virtualenv
- UFW firewall

To run the remote setup:
```bash
ansible-playbook -i inventory/remote-machine.ini playbooks/remote-machine.yml
```

## SSH Setup for Remote Machine

1. Generate SSH key (if you don't have one):
```bash
ssh-keygen -t rsa -b 4096
```

2. Copy your SSH key to the remote machine:
```bash
ssh-copy-id user@remote-machine-ip
```

3. Test the connection:
```bash
ssh user@remote-machine-ip
```

## Troubleshooting

Common issues and solutions:

1. **Permission Denied**
   - Ensure you have sudo privileges
   - Check SSH key permissions

2. **Package Installation Failures**
   - Check internet connectivity
   - Verify package names
   - Check system repositories

3. **SSH Connection Issues**
   - Verify SSH keys
   - Check firewall settings
   - Confirm network connectivity

## Next Steps

- Review the [Advanced Configuration](advanced-configuration.md) guide
- Check out the [Best Practices](best-practices.md) document
- Explore the [API Documentation](api-documentation.md) 