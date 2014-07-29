python-argparse:
  pkg:
    - installed

/home/steve/powerline-shell:
   file.recurse:
       - source: salt://powerline-shell
       - user: steve
       - group: steve
       - include_empty: True

/home/steve/powerline-shell.py:
   file.symlink:
       - target: /home/steve/powerline-shell/powerline-shell.py

/home/steve/.bashrc:
   file.managed:
        - source: salt://steve.bashrc
        - user: steve
        - group: steve

/home/steve/powerline-shell/powerline-shell.py:
   file.managed:
        - source: salt://powerline-shell/powerline-shell.py
        - mode: 755
        - user: steve
        - group: steve
