ssh-add -D
ssh-add ./.vagrant/machines/node1/virtualbox/private_key
ssh-add ./.vagrant/machines/node2/virtualbox/private_key
ssh-add ./.vagrant/machines/node3/virtualbox/private_key
ssh-add ./.vagrant/machines/node4/virtualbox/private_key
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ../inventories/local/hosts ../deploy_couchbase_local.yml
ansible-playbook -i ../inventories/local/hosts ../deploy_couchbase_indexes.yml

