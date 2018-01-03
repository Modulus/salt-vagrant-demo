init beacons on minions2:
  salt.state:
    - tgt: "*"
    - tgt_type: compound
    - sls:
      - users
