;Laser precision test pattern.
;hand written gcode

;Select laser tool.
T4
;Assuming microscope view is on the target, bring the laser into position.
M98 P/macros/ma_doL.g

;Kapton tape has provided good results thus far.

;Two lines, 5 mils apart. Ideally, the lines should be two mils wide, separated by three mils, independently visible under low-power microscope.

M98 P/macros/lb_off ;(OFF - LASER)
M106 P1 S255 ;(Fan on.)
G91 ;(relative coordinates from here)

;Starting Line
G0 X0 Y0 F2000 ;(rapid move to begin)
M400
M3
M98 P/macros/la_on ;(ON - LASER)

G0 X10 F600 ;(draw line)

M400
M5
M98 P/macros/lb_off ;(OFF - LASER)
G0 X-10 F2000 ;(rapid move back to start)

;5 mils
G0 X0 Y0.127 F2000 ;(rapid move to begin)
M400
M3
M98 P/macros/la_on ;(ON - LASER)

G0 X10 F600 ;(draw line)

M400
M5
M98 P/macros/lb_off ;(OFF - LASER)
G0 X-10 F2000 ;(rapid move back to start)

G0 X0 Y-0.127

;Examine results with microscope.

M98 P/macros/mb_exL.g
