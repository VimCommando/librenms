<?php

$rrd_filename = rrd_name($device['hostname'], 'mtxr_hotspot_users');

require 'includes/graphs/common.inc.php';

$ds = 'hotspotUsers';

$colour_area = '9999cc';
$colour_line = '0000cc';

$colour_area_max = '9999cc';

$scale_min = '0';
# $scale_max = '50';

$unit_text = 'Hotspot Users';

require 'includes/graphs/generic_simplex.inc.php';
