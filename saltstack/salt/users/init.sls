arthur:
  user.present:
    - name: arthur
    - fullname: Arthur Dent
    - home: /home/arthur
    - uid: 4001
    - require_in:
      - file: /home/arthur/.ssh/authorized_keys

/home/arthur/.ssh/authorized_keys:
  file.managed:
    - source: salt://users/templates/authorized_keys.j2
    - user: arthur
    - group: arthur
    - makedirs: True
    - mode: 0600