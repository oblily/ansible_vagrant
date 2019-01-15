#!/bin/sh
cd `dirname $0`
# SSH鍵ペアが存在しなければ生成する
if [ ! -f ~/.ssh/id_rsa_ansible ]; then
ssh-keygen -t rsa -f ~/.ssh/id_rsa_ansible -N ""
cat ~/.ssh/id_rsa_ansible.pub >> ~/.ssh/authorized_keys
# 初回でもknown_hostsに追加してよいか聞かれないようにするため予め登録しておく
ssh-keyscan -H localhost > ~/.ssh/known_hosts
fi
# Ansibleによるプロビジョニング
ansible-playbook -i local_hosts  $1 playbook/local.yml
