G28 ; home all axes
G92 E0 ; reset extruder position
G1 X60 Y125 Z30 F6000 ; move extruder
M84 ; disable motors
{STRIP ";"}