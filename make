#!/bin/bash

python -m ensurepip --upgrade

if ! [[ "$(command -v pipenv)" ]]; then
  pip3 install --user pipenv
fi

pipenv install
ansible-playbook ./ansible/bootstrap.yml

## TODO figure out how to ansible-ize this
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
rpm-ostree install code
rpm-ostree install logiops
rpm-ostree update
