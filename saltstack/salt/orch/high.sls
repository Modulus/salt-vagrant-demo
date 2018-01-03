init beacons on minions:
  salt.state:
    - tgt: "*"
    - tgt_type: compound
    - sls:
      - beacons
      - users
    - require_in:
      - salt: init reactor on master

init reactor on master:
  salt.state:
    - tgt: "G@role:master or master"
    - tgt_type: compound
    - sls:
      - common
      - reactor

