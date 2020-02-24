ALTER USER 'root'@'localhost' IDENTIFIED BY '{{ guacdb_root_pass.stdout }}';
CREATE DATABASE guacamole_db;
CREATE USER 'guacamole_user'@'{{ guacnet_guacamole }}' IDENTIFIED BY '{{ guacdb_guacamole_pass.stdout }}';
GRANT SELECT,INSERT,UPDATE,DELETE ON guacamole_db.* TO 'guacamole_user'@'{{ guacnet_guacamole }}';
FLUSH PRIVILEGES;
