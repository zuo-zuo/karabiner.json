#!/bin/bash
# Need to clear previously-executed modifications
# Otherwise, xcape can produce multiple returns/parens and so on
# CapsLock to ESC, or Control when holding
xmodmap -e "remove Control = Control_L"
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keycode 0x25 = Caps_Lock" # or make it for other using? for example "delete"
xmodmap -e "keycode 0x42 = Control_L"
xmodmap -e "add Control = Control_L"
xmodmap -e "add Lock = Caps_Lock"
# make CapsLock behave like Ctrl:
# setxkbmap -option ctrl:nocaps
# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'

# Return to Return, or Control when holding
xmodmap -e "remove Control = Control_R"
xmodmap -e "keycode 0x69 = Return"
xmodmap -e "keycode 0x24 = Control_R"
xmodmap -e "add Control = Control_R"
xcape -e 'Control_R=Return'

# modify tapping shift to parens
xcape -e "Shift_L=parenleft"
xcape -e "Shift_R=parenright"
