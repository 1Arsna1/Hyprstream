if status is-interactive
    # Commands to run in interactive sessions can go here
  starship init fish | source
  clear
  pokemon-colorscripts -r --no-title
  set fish_greeting " "
  alias nv='nvim'
  alias ls='lsd'
  alias l='ls -l'
  alias la='ls -a'
  alias lla='ls -la'
  alias lt='ls --tree'
  alias ae='autoexec'
  alias gc='git clone'
  alias lg='lazygit'
end

function fish_user_key_bindings
  fish_vi_key_bindings
end


function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

set -x UID (id -u)

set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_RUNTIME_DIR /run/user/$UID
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos
set -x XDG_STATE_HOME $HOME/.local/state/

set -x RUNTIME_DIR /run/user/$UID
set -x SHARE_DIR $HOME/.local/share
set -x CONFIG_DIR $HOME/.config
set -x STATE_DIR $HOME/.local/state
set -x CACHE_DIR $HOME/.cache/



set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x GNUPGHOME $XDG_DATA_HOME/gnupg
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x NUGET_PACKAGES $XDG_CACHE_HOME/NuGetPackages
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
set -x WINEPREFIX $XDG_DATA_HOME/wine
