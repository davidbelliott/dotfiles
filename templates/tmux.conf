# Vim keys
setw -g mode-keys vi
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel

# No ESC delay
set -sg escape-time 0

# Set window notifications
setw -g monitor-activity on
set -g visual-activity on

# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on

# reload config file (change file location to your the tmux.conf you want to use)
bind r source-file ~/.tmux.conf

#-------~---~----------~----------~----
# STATUS & MESSAGE
#-------~---~----------~----------~----

set -g message-fg black
set -g message-bg cyan

set -g status-justify left
set -g status-bg "colour236"
set -g status-fg white 

setw -g clock-mode-colour cyan

setw -g status-left " #[fg=white,bold]#S "
setw -g status-left-fg black
setw -g status-left-bg red

set -g status-right-length "100"
set -g status-right "#[bg=colour239]#[fg=white,bold] %a %B %-d, %Y #[fg=red,bold].:. #[fg=white,nobold]%H:%M #[fg=white,bold,bg=red] #h "

setw -g window-status-format " #I: #W "
setw -g window-status-separator ""
setw -g window-status-fg white

setw -g window-status-current-format " #I: #W "
setw -g window-status-current-fg yellow
setw -g window-status-current-bg "colour239"

setw -g window-status-bell-fg "colour9" 
setw -g window-status-activity-fg yellow
set-option -g status-position bottom
