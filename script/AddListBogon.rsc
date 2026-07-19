/system script
add comment="ipv4 and ipv6" dont-require-permissions=no name="add bogon" \
    owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="/\
    ip firewall address-list\
    \nadd address=0.0.0.0/8 comment=\"This host on this network\" list=BOGON\
    \nadd address=10.0.0.0/8 comment=Private-Use list=BOGON\
    \nadd address=100.64.0.0/10 comment=\"Shared Address Space\" list=BOGON\
    \nadd address=127.0.0.0/8 comment=\"Shared Address Space\" list=BOGON\
    \nadd address=169.254.0.0/16 comment=\"Link Local\" list=BOGON\
    \nadd address=172.16.0.0/12 comment=Private-Use list=BOGON\
    \nadd address=192.0.0.0/24 comment=\"IETF Protocol Assignments\" list=BOGO\
    N\
    \nadd address=192.0.0.0/29 comment=DS-Lite list=BOGON\
    \nadd address=192.0.2.0/24 comment=\"Documentation (TEST-NET-1)\" list=BOG\
    ON\
    \nadd address=192.88.99.0/24 comment=\"6to4 Relay Anycast\" list=BOGON\
    \nadd address=192.168.0.0/16 comment=Private-Use list=BOGON\
    \nadd address=198.18.0.0/15 comment=Benchmarking list=BOGON\
    \nadd address=198.51.100.0/24 comment=\"Documentation (TEST-NET-2)\" list=\
    BOGON\
    \nadd address=203.0.113.0/24 comment=\"Documentation (TEST-NET-3)\" list=B\
    OGON\
    \nadd address=240.0.0.0/4 comment=Reserved list=BOGON\
    \nadd address=255.255.255.255 comment=\"Limited Broadcast\" list=BOGON\
    \n\
    \n/ipv6 firewall address-list\
    \nadd address=::1/128 comment=\"Loopback Address\" list=BOGON\
    \nadd address=::/128 comment=\"Unspecified Address\" list=BOGON\
    \nadd address=64:ff9b::/96 comment=\"IPv4-IPv6 Translat\" list=BOGON\
    \nadd address=::ffff:0.0.0.0/96 comment=\"IPv4-mapped Address\" list=BOGON\
    \nadd address=100::/64 comment=\"Discard-Only Address Block\" list=BOGON\
    \nadd address=2001::/23 comment=\"IETF Protocol Assignments\" list=BOGON\
    \nadd address=2001::/32 comment=TEREDO list=BOGON\
    \nadd address=2001:2::/48 comment=Benchmarking list=BOGON\
    \nadd address=2001:db8::/32 comment=Documentation list=BOGON\
    \nadd address=2001:10::/28 comment=ORCHID list=BOGON\
    \nadd address=2002::/16 comment=6to4 list=BOGON\
    \nadd address=fc00::/7 comment=Unique-Local list=BOGON\
    \nadd address=fe80::/10 comment=\"Linked-Scoped Unicast\" list=BOGON\
    \nadd address=2001:5::/32 comment=\"Reserved by IETF [RFC-6890]\" list=BOG\
    ON"
