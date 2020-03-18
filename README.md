# Reference
Creates an (all-in-one) guacamole server using docker (or podman) w/ mysql for auth.

# Deployment
```
# local example (non-RHEL8)
ansible-playbook guacamole.yml --extra-vars="target=localhost guacnet_cidr=192.168.5.0/24 guacnet_guacd=192.168.5.2 guacnet_guacdb=192.168.5.3 guacnet_guacamole=192.168.5.4"

# local example (RHEL8)
ansible-playbook guacamole.yml --extra-vars="target=localhost guacnet_guacd=10.88.0.2 guacnet_guacdb=10.88.0.3 guacnet_guacamole=10.88.0.4"
```

# Notes
```
- For non-rhel8, guacnet_cidr and the associated guacnet_<ip> variables must not be in use, they're for docker services.
- For rhel8, guacnet_<ip> variables must be within 10.88.0.0/16, the default podman network.
- if needed, database credentials are available in /opt/guacamole on the docker host.
- guacadmin:guacadmin are the default web admin credentials.
- https://localhost:8080/guacamole is the default web endpoint.
- tested with CentOS 7, Ubuntu 18.04, and RHEL 8
```
