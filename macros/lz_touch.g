;Sets coordinates such that zero will be seen upon selecting laser tool with "T4".

T99	;No tool (ie. microscope).

M561	;Zero existing compensation.
G92 X55.40 Y65.30 Z0

T4

G91
G0 X0.01 Y0.01 Z0.01 F10
G0 X-0.01 Y-0.01 Z-0.01 F10

M564 S0	;disable limits
