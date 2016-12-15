snmptranslate mibs/MIKROTIK-NOC-MIB::mtxrHotspot
snmptranslate MIKROTIK-MIB::mtxrHotspot
snmptranslate -m +MIKROTIK-MIB -IR mtxrHotspot
snmptranslate MIKROTIK-MIB::mtxrHotspot
snmptranslate MIKROTIK-MIB::mtxrHotspotActiveUsers
snmptranslate MIKROTIK-MIB::mtxrHotspotActiveUsersTable
snmptranslate -IR -On mtxrHotspotActiveUsersTable
snmptranslate MIKROTIK-MIB::mtxrHotspotActiveUsersTable
snmptranslate -m +MIKROTIK-MIB -IR -On mtxrHotspotActiveUsersTable
snmptranslate -On MIKROTIK-MIB::mtxrHotspotActiveUsersTable
snmptranslate -On MIKROTIK-MIB::mtxrSerialNumber
snmptable -v1 -c W4v3l3ng7H 24.117.180.163 MIKROTIK-MIB::mtxrHotspotActiveUsersTable
snmpget -v1 -c W4v3l3ng7H -m MIKROTIK-MIB 24.117.180.163 .1.3.6.1.4.1.14988.1.1.1.2.1.1
snmpget -v1 -c W4v3l3ng7H -m MIKROTIK-MIB 24.117.180.163 .1.3.6.1.4.1.14988.1.1.1.2.1.1.0
snmpwalk -v1 -c W4v3l3ng7H 24.117.180.163 MIKROTIK-MIB::mtxrHotspotActiveUsersTable
snmptable -v1 -c W4v3l3ng7H -m MIKROTIK-MIB 24.117.180.163 mtxrHotspotActiveUsersTable -OQv
snmptable -v1 -c W4v3l3ng7H -m MIKROTIK-MIB 24.117.180.163 ifTable
snmptable -v1 -c W4v3l3ng7H -m IF-MIB 24.117.180.163 ifTable -OQUst
snmpwalk -v1 -c W4v3l3ng7H -m IF-MIB 24.117.180.163 ifTable -OQUst
snmptable -v1 -c W4v3l3ng7H -m IF-MIB 24.117.180.163 ifTable -OQUst
