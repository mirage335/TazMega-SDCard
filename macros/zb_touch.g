T99	;No tool (ie. microscope).

M561	;Zero existing compensation.
G92 X0 Y0 Z0

G0 X0.01 Y0.01 Z0.01 F10
G0 X0 Y0 Z0 F10

M564 S0	;disable limits
