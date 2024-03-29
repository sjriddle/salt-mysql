include:
  - mysql.restart

mysql_server_config:
  file.managed:
    - name: /etc/my.conf.d/server.cnf
    - source: salt://mysql/files/server.cnf
    - require:
      - pkg: mariadb-server
