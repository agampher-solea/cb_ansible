ssh-add -D
ssh-add ./.vagrant/machines/node1/virtualbox/private_key
ssh-add ./.vagrant/machines/node2/virtualbox/private_key
ssh-add ./.vagrant/machines/node3/virtualbox/private_key
ansible-playbook -i ../inventories/local/hosts ../deploy_couchbase.yml

