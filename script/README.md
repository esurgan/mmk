# MikroTik Bogon Address List

[![MikroTik](https://img.shields.io/badge/MikroTik-RouterOS-7A2B8C?logo=mikrotik)](https://mikrotik.com/)

## Quick Installation

### Automatic Installation

Run this command in your MikroTik terminal:

```routeros
/tool fetch url="https://raw.githubusercontent.com/esurgan/mmk/refs/heads/main/script/AddListBogon.rsc" dst-path="AddListBogon.rsc";
:delay 10s;
/system script run AddListBogon.rsc;
/file remove AddListBogon.rsc;
```

---

## Manual Installation

### If you prefer to add the bogon list manually:

IPv4 Address List:

```routeros
/ip firewall address-list
add address=0.0.0.0/8 comment="This host on this network" list=BOGON
add address=10.0.0.0/8 comment=Private-Use list=BOGON
add address=100.64.0.0/10 comment="Shared Address Space" list=BOGON
add address=127.0.0.0/8 comment="Shared Address Space" list=BOGON
add address=169.254.0.0/16 comment="Link Local" list=BOGON
add address=172.16.0.0/12 comment=Private-Use list=BOGON
add address=192.0.0.0/24 comment="IETF Protocol Assignments" list=BOGON
add address=192.0.0.0/29 comment=DS-Lite list=BOGON
add address=192.0.2.0/24 comment="Documentation (TEST-NET-1)" list=BOGON
add address=192.88.99.0/24 comment="6to4 Relay Anycast" list=BOGON
add address=192.168.0.0/16 comment=Private-Use list=BOGON
add address=198.18.0.0/15 comment=Benchmarking list=BOGON
add address=198.51.100.0/24 comment="Documentation (TEST-NET-2)" list=BOGON
add address=203.0.113.0/24 comment="Documentation (TEST-NET-3)" list=BOGON
add address=240.0.0.0/4 comment=Reserved list=BOGON
add address=255.255.255.255 comment="Limited Broadcast" list=BOGON
```
IPv6 Address List:

```routeros
/ipv6 firewall address-list
add address=::1/128 comment="Loopback Address" list=BOGON
add address=::/128 comment="Unspecified Address" list=BOGON
add address=64:ff9b::/96 comment="IPv4-IPv6 Translat" list=BOGON
add address=::ffff:0.0.0.0/96 comment="IPv4-mapped Address" list=BOGON
add address=100::/64 comment="Discard-Only Address Block" list=BOGON
add address=2001::/23 comment="IETF Protocol Assignments" list=BOGON
add address=2001::/32 comment=TEREDO list=BOGON
add address=2001:2::/48 comment=Benchmarking list=BOGON
add address=2001:db8::/32 comment=Documentation list=BOGON
add address=2001:10::/28 comment=ORCHID list=BOGON
add address=2002::/16 comment=6to4 list=BOGON
add address=fc00::/7 comment=Unique-Local list=BOGON
add address=fe80::/10 comment="Linked-Scoped Unicast" list=BOGON
add address=2001:5::/32 comment="Reserved by IETF [RFC-6890]" list=BOGON
```