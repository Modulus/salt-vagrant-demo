/etc/salt/master.d/reactor.conf:
  file.managed:
    - source: salt://reactor/templates/reactor.conf.j2

#salt-minion:
#  service.running:
#    - enable: True
#    - watch:
#      - file: /etc/salt/master.d/reactor.conf