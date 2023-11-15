export MUSIC_DIR=$HOME/Music
export PATH=$HOME/.local/bin:$PATH
export PICOM_CONF="$HOME/.config/i3/picom.conf"
alias music='tmux new-session -s $$ "tmux source-file ~/.ncmpcpp/tsession"'
