return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    require('nvim-tmux-navigation').setup {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = '<C-h>',
        down = '<C-j>',
        up = '<C-k>',
        right = '<C-l>',
        last_active = '<C-\\>',
        next = '<C-Space>',
      },
    }
  end,
}

-- # TMUX config
-- is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
-- bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h' 'select-pane -L'
-- bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j' 'select-pane -D'
-- bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k' 'select-pane -U'
-- bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l' 'select-pane -R'
--
-- # send C-l to terminal (clear)
-- bind C-l send-keys 'C-l'
--
-- bind-key -n 'C-\' if-shell "$is_vim" 'send-keys C-\'  'select-pane -l'
-- bind-key -n 'C-Space' if-shell "$is_vim" 'send-keys C-Space' 'select-pane -t:.+'
--
-- bind-key -T copy-mode-vi 'C-h' select-pane -L
-- bind-key -T copy-mode-vi 'C-j' select-pane -D
-- bind-key -T copy-mode-vi 'C-k' select-pane -U
-- bind-key -T copy-mode-vi 'C-l' select-pane -R
-- bind-key -T copy-mode-vi 'C-\' select-pane -l
-- bind-key -T copy-mode-vi 'C-Space' select-pane -t:.+
