nagios-plugins-all:
  pkg.installed

nrpe:
  pkg:
     - installed
  service:
     - running
     - reload: True
     - enable: True
     - file: /etc/nagios/nrpe.cfg
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - source: 192.168.1.244
    - dport: 5666
    - proto: tcp
    - save: True

/etc/nagios/nrpe.cfg:
  file.managed:
    - source: salt://nrpe.cfg
    - user: root
    - group: root
    - mode: 644

