;
;=========================================================
;
;
;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
;
;
;   To learn more about how to configure Polybar
;   go to https://github.com/polybar/polybar
;
;   The README contains a lot of information
;
;==========================================================

[colors]
;background = ${xrdb:color0:#222}
; background = #131416
background = #0f0607
background-alt = #444
background-light = #d4d0a7
;foreground = ${xrdb:color7:#222}
foreground = #dfdfdf
foreground-alt = #dfdfdf
primary = #ffb52a
secondary = #e60053
alert = #bd2c40
red         = #F7768E
green       = #9ECE6A
yellow      = #E0AF68
blue        = #7AA2F7 
magenta     = #AD8EE6
cyan        = #444B6A
white       = #FFFFFF
black = #1A1D45


[bar/left]
width = 18%
height = 24
offset-x = 1%
offset-y = 5px
radius=8
fixed-center = false

background = ${colors.background}
foreground = ${colors.green}

line-size = 2
line-color = #f00

border-color = #00000000

padding-left = 0
padding-right = 2

module-margin-left = 1
module-margin-right = 1

font-0 = Fira Code Medium:pixelsize=10;1
font-1 = Material Design Icons:pixelsize=11:style:Regular;1
;font-2 = FontAwesome:pixelsize=11;1
;font-3 = unifont:fontformat=truetype:size=8:antialias=true;0
;font-4 = siji:pixelsize=14;1

modules-center = date

wm-restack = i3

override-redirect = true


cursor-click = pointer
cursor-scroll = ns-resize



[bar/title]
;monitor = ${env:MONITOR:HDMI-1}
width = 13%
height = 24
offset-x = 18%
offset-y = 7px
radius=8
fixed-center = false

background = ${colors.background}
foreground = ${colors.green}

line-size = 2
line-color = #f00

border-color = #00000000

padding-left = 0
padding-right = 2

module-margin-left = 1
module-margin-right = 1

font-0 = Fira Code Medium:pixelsize=10;1
font-1 = Material Design Icons:pixelsize=11:style:Regular;1
;font-2 = FontAwesome:pixelsize=11;1
;font-3 = unifont:fontformat=truetype:size=8:antialias=true;0
;font-4 = siji:pixelsize=14;1

modules-center = xwindow

wm-restack = i3

override-redirect = true


cursor-click = pointer
cursor-scroll = ns-resize


[bar/mid]
width = 12%
height = 24
offset-x = 40%
offset-y = 7px
radius=8

background = ${colors.background}
foreground = ${colors.foreground}

line-size = 2
line-color = #f00

border-color = #00000000

padding-left = 0
padding-right = 2

module-margin-left = 1
module-margin-right = 1

font-0 = Fira Code Medium:pixelsize=10;1
font-1 = unifont:fontformat=truetype:size=8:antialias=true;0
font-2 = siji:pixelsize=14;1
font-3 = FontAwesome:pixelsize=11;1

modules-center = i3

wm-restack = i3

override-redirect = true


cursor-click = pointer
cursor-scroll = ns-resize


[bar/right]

width = 43%
height = 24
offset-x = 56%
offset-y = 7px
radius = 8

background = ${colors.background}
foreground = ${colors.foreground}

line-size = 2
line-color = #f00

border-color = #00000000

padding-left = 0
padding-right = 1


font-0 = FiraCode Nerd Font:pixelsize=10;1
font-1 = Material Icons:pixelsize=13:style:Regular;1
font-2 = FontAwesome:pixelsize=11;1
font-3 = Material Design Icons:pixelsize=13:style:Regular;1

modules-center = cpu sep temperature sep memory sep volume sep eth sep redshift

wm-restack = i3

override-redirect = true


cursor-click = pointer
cursor-scroll = ns-resize



; let's try to make bar on bottom

; end




[module/xwindow]
type = internal/xwindow
label = %title:0:30:...%

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0 = num lock

format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
format-underline = ${colors.secondary}
format-background = ${colors.background-alt}
format-padding = 2

label-layout = %layout%
label-layout-underline = ${colors.secondary}

label-indicator-padding = 2
label-indicator-margin = 1
label-indicator-background = ${colors.secondary}
label-indicator-underline = ${colors.secondary}

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted =  %used%:%total% 
label-mounted-underline = #989719
label-mounted-padding = 2
label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.foreground-alt}
label-unmounted-padding = 2

label-mounted-background = ${colors.background-alt}
label-unmounted-background = ${colors.background-alt}

[module/bspwm]
type = internal/bspwm

label-focused = %index%
label-focused-background = ${colors.background-alt}
label-focused-underline= ${colors.primary}
label-focused-padding = 2

label-occupied = %index%
label-occupied-padding = 2

label-urgent = %index%!
label-urgent-background = ${colors.alert}
label-urgent-padding = 2

label-empty = %index%
label-empty-foreground = ${colors.foreground-alt}
label-empty-padding = 2

; Separator in between workspaces
; label-separator = |

[module/i3]
type = internal/i3
format = <label-state> <label-mode>
index-sort = true
wrapping-scroll = false

; Only show workspaces on the same output as the bar
;pin-workspaces = true

label-mode-padding = 1
label-mode-foreground = #000
label-mode-background = ${colors.primary}

; focused = Active workspace on focused monitor
label-focused = %index%
label-focused-background = ${colors.background-alt}
label-focused-underline= ${colors.primary}
label-focused-padding = 1

; unfocused = Inactive workspace on any monitor
label-unfocused = %index%
label-unfocused-padding = 1

; visible = Active workspace on unfocused monitor
label-visible = %index%
label-visible-background = ${self.label-focused-background}
label-visible-underline = ${self.label-focused-underline}
label-visible-padding = ${self.label-focused-padding}

; urgent = Workspace with urgency hint set
label-urgent = %index%
label-urgent-background = ${colors.alert}
label-urgent-padding = 1

; Separator in between workspaces
; label-separator = |



[module/cpu]
type = internal/cpu
interval = 2
format-prefix-font = 4
format-prefix = "﬙"
format-prefix-foreground = ${colors.green}
format-padding = 1

; label = %percentage:2%%

label = " %percentage-cores%"



; from shit


[module/memory]
type = internal/memory
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.blue}
format-padding = 1
label =  %percentage_used%%





[module/eth]
type = internal/network
interface = enp2s0 
interval = 1.0

format-padding = 5
; format-connected-underline = #55aa55
; format-connected-underline = #9f78e1
; format-connected-prefix = "  "
format-connected-prefix-foreground = ${colors.foreground-alt}
; label-connected = %local_ip%
 
; label-connected = " %{A1:networkmanager_dmenu &:}%downspeed% %upspeed%%{A}"
label-connected = " %{A1:networkmanager_dmenu &:}%downspeed% 祝 %upspeed%%{A}"

format-disconnected =
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}
; label-connected-foreground = ${colors.black}
; label-connected-background = ${colors.green}
; format-disconnected-foreground = ${colors.black}
; format-disconnected-background = ${colors.green}
;
[module/sep]
type = custom/text
content=|
content-foreground = #555


[module/date]
type = internal/date
interval = 1

date = "%a %d.%m.%Y"
date-alt = "%a %d.%m.%Y"

time = %a %d %b %I:%M %p
; time = " %I:%M %p"
time-alt = %I:%M %p - %a %d.%m.%Y

format-padding = 2

label = %time%

[module/volume]
type = internal/pulseaudio
; type = internal/alsa

format-volume = <label-volume>
label-volume = %{F#e002a5} %{F-}%percentage%%
label-volume-foreground = ${root.foreground}
label-muted = "  婢  "
; label-muted = " "
label-muted-foreground = #666
format-padding = 1

ramp-volume-foreground = ${color.magenta}
ramp-volume-0 = 



[module/temperature]
type = internal/temperature

# acpitz temp1
; /hwmon-path =sys/devices/virtual/thermal/thermal_zone0/hwmon0/temp1_input
# acpitz temp2
; /hwmon-path =sys/devices/virtual/thermal/thermal_zone0/hwmon0/temp2_input
# coretemp pkgID 0
; /hwmon-path =  /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input
# coretemp core 0
; /hwmon-path = /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp2_input
# coretemp core 1 
; /hwmon-path =/sys/devices/platform/coretemp.0/hwmon/hwmon1/temp3_input
# coretemp core 2 
; /hwmon-path =/sys/devices/platform/coretemp.0/hwmon/hwmon1/temp4_input
# coretemp core 3 
; /hwmon-path =/sys/devices/platform/coretemp.0/hwmon/hwmon1/temp5_input

thermal-zone = 2 
warn-temperature = 60
interval = 0.5
format-prefix = " "
format-warn-prefix = " "
format-prefix-foreground = ${colors.red}
format-warn-prefix-foreground = ${colors.red}
format =  <label>
format-padding = 1
format-warn = <label-warn>

label = %temperature-c%
label-warn = %temperature-c%
label-warn-foreground = ${colors.red}

ramp-0 = 
ramp-1 = 
ramp-2 = 
ramp-foreground = ${colors.foreground-alt}


; night light



[module/redshift]
type = custom/script
format-prefix = " "  
exec = source ~/.config/polybar/scripts/env.sh && ~/.config/polybar/scripts/redshift.sh temperature 
click-left = source ~/.config/polybar/scripts/env.sh && ~/.config/polybar/scripts/redshift.sh toggle 
scroll-up = source ~/.config/polybar/scripts/env.sh && ~/.config/polybar/scripts/redshift.sh increase
scroll-down = source ~/.config/polybar/scripts/env.sh && ~/.config/polybar/scripts/redshift.sh decrease
interval=0.5


[module/powermenu]
type = custom/menu

expand-right = true

format-spacing = 1

label-open = 
label-open-foreground = ${colors.secondary}
label-close =  cancel
label-close-foreground = ${colors.secondary}
label-separator = |
label-separator-foreground = ${colors.foreground-alt}

menu-0-0 = reboot
menu-0-0-exec = menu-open-1
menu-0-1 = power off
menu-0-1-exec = menu-open-2
menu-0-2 = logout
menu-0-2-exec = menu-open-3

menu-1-0 = cancel
menu-1-0-exec = menu-open-0
menu-1-1 = reboot
menu-1-1-exec = systemctl reboot

menu-2-0 = power off
menu-2-0-exec = systemctl poweroff
menu-2-1 = cancel
menu-2-1-exec = menu-open-0

menu-3-0 = logout
menu-3-0-exec = i3exit logout
menu-3-1 = cancel
menu-3-1-exec = menu-open-0

[settings]
screenchange-reload = true
;compositing-background = xor
;compositing-background = screen
;compositing-foreground = source
;compositing-border = over
pseudo-transparency = true

[global/wm]
margin-top = 5
margin-bottom = 5

; vim:ft=dosini
