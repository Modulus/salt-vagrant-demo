python-pip:
  pkg.installed:
    - require_in:
      - pip: pyinotify

pyinotify:
  pip.installed:
    - require_in:
      - file: /etc/salt/minion.d/beacons.conf
      - service: salt-minion

/etc/salt/minion.d/beacons.conf:
  file.managed:
    - source: salt://beacons/templates/beacons.j2

salt-minion:
  service.running:
    - enable: True
    - watch:
      - file: /etc/salt/minion.d/beacons.conf