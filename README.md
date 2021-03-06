# dotfiles
My dotfiles. Uses Ansible playbooks to automate creation of symlinks.

## Installing Ansible
[Full guide here](http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
```bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
## Ansible Role Requirements
Some of the playbooks require third party ansible roles. To install use the following.
```bash
ansible-galaxy install -r requirements.yml
```

## Running Playbook
The Ansible playbook creates backups of existing config files, then creates symlinks to the files in this repo.
```bash
ansible-playbook -i inventory playbook.yml
```

## Vim Plugins
Vim plugins are included using the vim8 native package loader (see `:help packages`).

### Initialising Plugins
If a new plugin gets added you'll need to initialise it
```bash
git submodule update --recursive --init
```

### Adding a plugin
```bash
cd vim/vim/pack/plugins/start
git submodule add <PLUGIN_REPO_URL>
```

### Updating Plugins
```bash
git submodule update --recursive --remote
```
