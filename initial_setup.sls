vim-enhanced:
  pkg.installed

htop:
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

AAAAB3NzaC1yc2EAAAADAQABAAABAQDGrohB/sNjpTWTGVzTuwHNoEme/Twmatwor76vnA8tkOMSf7C/PFAAyKQ8TaoFsLvYCKrkuROkDgEfWwXxXdBt7TjTDRxjerdV7Armn2Gmu0t+G4PqggeyjpaMXHsPamRmBhrH55YG/tjoW0fHSPYjhB7K/XNtx88QSvPpMJEczu5nMLCEye+NAjpPBKzlYTlbx1WjgCAs8SfizV6SAcPCWoaFPMO7wA4hrLpHOgZKG9PSCOCqGppGMr5t7kLryezOTIZ9sXvxOeoNTlvQaeQxbzY5ssw6AdTPbHLYRZgxcxmUuI0yc6hK1tfo5FFyD36AkbufdzxJg4arI4yiuR1j:
  ssh_auth:
    - present
    - user: steve
    - enc: ssh-rsa

/etc/hosts:
  file.managed:
    - source: salt://hosts
    - user: root
    - group: root
    - mode: 644

/etc/sudoers:
  file.managed:
    - source: salt://sudoers
    - user: root
    - group: root
    - mode: 644

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd_config
    - user: root
    - group: root
    - mode: 644

sshd:
  service:
     - running
     - reload: True
     - enable: True
