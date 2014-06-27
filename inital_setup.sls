vim-enhanced:
  pkg.installed

steve:
  user.present:
    - uid: 1000
    - home: /home/steve
    - shell: /bin/bash
    - password: $6$ynRG41fG$hPGfzQCPD4kXLY4g99ELAmNHo5oTMmrZ/He5GsxdqIE6QoaTRHindRjpetrFZvgmHpA2VPyBozLuEKk3GlYwY0
    - groups:
       - wheel
       - users

/etc/hosts:
  file.managed:
    - source: salt://hosts
    - user: root
    - group: root
    - mode: 644
