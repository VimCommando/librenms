<?php

$version = trim(snmp_get($device, 'MIKROTIK-MIB::mtxrLicVersion.0', '-OQv'), '"');
if (strstr($poll_device['sysDescr'], 'RouterOS')) {
    $hardware = substr($poll_device['sysDescr'], 9);
}

$features = 'Level '.trim(snmp_get($device, 'MIKROTIK-MIB::mtxrLicLevel.0', '-OQv'), '"');

$serial = snmp_get($device, 'MIKROTIK-MIB::mtxrSerialNumber.0', '-OQv');

$hotspotUsersTable = snmp_table($device, 'MIKROTIK-MIB::mtxrHotspotActiveUsersTable');
$hotspotUsers = count($hotspotUsersTable);

# $hotspotUsersTable = snmp_walk($device, 'MIKROTIK-MIB::mtxrHotspotActiveUsersTable', '-OQv');
# var_dump(array_splice($hotspotUsersTable,0,5));

if (is_numeric($hotspotUsers)) {
    echo 'HotspotUsers: ' . $hotspotUsers . PHP_EOL;
    $rrd_def = 'DS:hotspotUsers:GAUGE:600:0:U';
    $fields = array('hotspotUsers' => $hotspotUsers);
    $tags = compact('rrd_def');
    data_update($device, 'mtxr_hotspot_users', $tags, $fields);
    $graphs['mtxr_hotspot_users'] = true;
}

