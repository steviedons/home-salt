denyhosts:
  pkg:
    - installed
  file.managed:
    - name: /etc/denyhosts.conf
    - source: salt://denyhosts.conf
    - user: root
    - group: root
    - mode: 644
    - require:
       - pkg: denyhosts
  service:
    - running
    - watch:
      - file: /etc/denyhosts.conf

/etc/hosts.allow:
  file.managed:
    - source: salt://hosts.allow
    - user: root
    - group: root
    - mode: 644
    - require:
       - pkg: denyhosts
 
