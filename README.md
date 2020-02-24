# Reference
Creates an (all-in-one) guacamole server using docker w/ mysql for auth.

# Deployment
```
# local example
ansible-playbook guacamole.yml --extra-vars="target=localhost guacnet_cidr=192.168.0.0/24 guacnet_guacd=192.168.0.2 guacnet_guacdb=192.168.0.3 guacnet_guacamole=192.168.0.4"
```
