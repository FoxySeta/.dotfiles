#!/usr/bin/fish
set LAPTOP eDP-1
if grep -q open /proc/acpi/button/lid/LID/state
    swaymsg output LAPTOP enable
else
    swaymsg output LAPTOP disable
end
