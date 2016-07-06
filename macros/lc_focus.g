;Runs the normal probing routine after setting a dedicated offset.


G31 C0.0035 P500 X-139.2 Y8.7 Z4.25

M98 P/sys/bed.g

;Return to safe default when done.
G31 C0.0035 P500 X-139.2 Y8.7 Z1.15
