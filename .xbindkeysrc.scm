(xbindkey '("XF86AudioRaiseVolume") "amixer set Master 6550+")
(xbindkey '("XF86AudioLowerVolume") "amixer set Master 6550-")

(xbindkey '("XF86AudioMute") "amixer set Master toggle")

(xbindkey '(release XF86Forward) "xdotool key --delay 0 --clearmodifiers Page_Down")
(xbindkey '(release XF86Back) "xdotool key --delay 0 --clearmodifiers Page_Up")
