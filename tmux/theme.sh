#### COLOUR

tm_color_active=colour32
tm_color_inactive=colour241
tm_color_feature=colour206
tm_color_music=colour215
tm_active_border_color=colour118

# separators
tm_separator_left_bold=""
tm_separator_left_thin=""
tm_separator_right_bold=""
tm_separator_right_thin=""

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# default statusbar colors
set-option -g status-style bg=default,fg=$tm_color_active

# default window title colors
set-window-option -g window-status-style fg=$tm_color_inactive,bg=default
#set-window-option -g window-status-bg default

set -g window-status-format "#I #W "
# active window title colors
set-window-option -g  window-status-current-format "#[bold]#I #W "
set-window-option -g window-status-current-style fg=yellow,bg=default

# pane border colors
set-option -g pane-border-style fg=$tm_color_inactive
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
set-option -g message-style fg=$tm_color_active,bg=default

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

# tm_tunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/tunes.scpt | cut -c 1-50)"
tm_tunes="#[fg=$tm_color_music]#(osascript -l JavaScript ~/.dotfiles/applescripts/tunes.js)"
tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_color_inactive] %R %d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"
tm_session_name="#[fg=$tm_color_feature,bold]#S"

# set -g status-left $tm_session_name' '
set -g status-left-length 50
local_ip="#(hostname -I | awk '{print $1}')"
global_ip="#(curl icanhazip.com) #(ifconfig en0 | grep 'inet ' | awk '{print \"en0 \" $2}') #(ifconfig en1 | grep 'inet ' | awk '{print \"en1 \" $2}') #(ifconfig en3 | grep 'inet ' | awk '{print \"en3 \" $2}') #(ifconfig tun0 | grep 'inet ' | awk '{print \"vpn \" $2}') "
set -g status-left "#[fg=green]$local_ip $tm_separator_right_thin #[fg=red]$global_ip$tm_separator_right_thin "

# set -g status-right $tm_tunes' '$tm_date' '$tm_host
set -g status-right-length 70
set -g status-right "#[fg=cyan,bold] #(echo $USER)@#H #[default]$tm_separator_left_thin #[fg=green]%H:%M #[default]$tm_separator_left_thin #[fg=red] %d-%m-%Y#[default]"

#set -g status-left '#[fg=colour232,bg=colour154] #S #[fg=colour154,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #W #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour121,bg=colour235] #(whoami)  #(uptime  | cut -d " " -f 1,2,3) #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]'

#set -g status-right '#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour121,bg=colour235] %r  %a  %Y #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #H #[fg=colour154,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour232,bg=colour154] #(rainbarf --battery --remaining --no-rgb) '

#setw -g window-status-format '#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[default] #I  #W #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]'

#setw -g window-status-current-format '#[fg=colour235,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #I  #W  #F #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]'
