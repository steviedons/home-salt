epel-release-6.8:
  pkg.installed:
    - skip_verify: True
    - sources:
      - epel-release-6.8: salt://epel-release-6-8.noarch.rpm
