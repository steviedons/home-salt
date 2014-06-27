httpd:
  pkg.installed:
    - pkgs:
      - httpd
  service:
    - running
    - enable: True
    - reload: True

php:
  pkg.installed

/var/www/html/linux-dash:
    file.recurse:
        - source: salt://linux-dash-master
        - user: root
        - group: root
        - include_empty: True
