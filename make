#!/bin/bash
set -xe

python -m ensurepip --upgrade

if ! [[ "$(command -v pipenv)" ]]; then
  pip3 install --user pipenv
fi

pipenv install
pipenv run ansible-playbook -K ./ansible/bootstrap.yml
