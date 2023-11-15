if status is-interactive
    # Commands to run in interactive sessions can go here
end
clear
set -g fish_greeting

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ghozi/.ghcup/bin # ghcup-env