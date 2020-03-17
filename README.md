# Reference
Creates an (all-in-one) guacamole server using docker w/ mysql for auth.

# Deployment
```
# local example
ansible-playbook guacamole.yml --extra-vars="target=localhost guacnet_cidr=192.168.5.0/24 guacnet_guacd=192.168.5.2 guacnet_guacdb=192.168.5.3 guacnet_guacamole=192.168.5.4"
```

# Notes
```
- guacnet_cidr and the associated guacnet_<ip> variables must not be in use, they're for docker services.
- if needed, database credentials are available in /opt/guacamole on the docker host.
- guacadmin:guacadmin are the default web admin credentials.
- https://localhost:8080/guacamole is the default web endpoint.
- tested with CentOS 7 and Ubuntu 18.04
```
