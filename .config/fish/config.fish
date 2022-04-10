#
# $HOME/.config/fish/config.fish
#Setting environment variables
set fish_greeting ""
set -g fish_cursor_insert line blink
set -g fish_cursor_default line blink
set -gx fish_user_paths $HOME/.local/bin
status --is-interactive && motivate
fish_vi_key_bindings

export BROWSER=firefox
export CALIBRE_USE_DARK_PALETTE=1
export ANSIWEATHERRC=~/.config/ansiweather/rc

[ -z "$BEMENU_OPTS" ] && export BEMENU_OPTS='-bil 20 --fn pango:JetBrains Mono NL Bold 15 -W 0.4 --prompt=""'

#Clear all existing abbreviations to prevent confusions and redundancies
abbr -e (abbr -l)

#Yt-dlp abbr -aes
abbr -a yd "yt-dlp  -S 'res:480' -o '%(title)s.%(ext)s'"
abbr -a ya "yt-dlp -x --embed-thumbnail --audio-format mp3 -o '%(title)s.%(ext)s'"
abbr -a ypa "yt-dlp -x --embed-thumbnail --audio-format mp3 -o '%(playlist_index)s. %(title)s.%(ext)s'"
abbr -a ypv "yt-dlp -S "res:480" -o '%(playlist_index)s. %(title)s.%(ext)s'"


#Pacman
abbr -a mu 'sudo reflector --verbose --protocol https --sort rate --country "India,Japan,China" --save /etc/pacman.d/mirrorlist && sudo pacman -Syyuu'
abbr -a S "sudo pacman -S"
abbr -a R "sudo pacman -Rns"
abbr -a F "pacman -F"
abbr -a se "pacman -Ss"
abbr -a Q "pacman -Q"
abbr -a q "pacman -Qqe"
abbr -a m "pacman -Qm"
abbr -a Qg "pacman -Q | grep"
abbr -a deps "pacman -Qq | fzf --preview 'pactree -lur {}' --layout reverse --bind 'enter:execute(pactree -lu {} | less)'"


#Documents & configs abbr -aes
abbr -a brc "nvim ~/.bashrc"
abbr -a h "sudo -E nvim /etc/hosts"
abbr -a f "nvim ~/.config/fish/config.fish"
abbr -a sc "nvim ~/.config/sway/config"
abbr -a fs "source ~/.config/fish/config.fish"
abbr -a v "nvim ~/.config/nvim/init.vim"
abbr -a i "nvim ~/.config/i3/config"


#System shortcuts
abbr -a g 'grep --color'
abbr -a grep 'grep --color'
abbr -a ip 'ip -color=auto'
abbr -a s "MOZ_ENABLE_WAYLAND=1 sway"
abbr -a e "exit"
abbr -a p "poweroff"
abbr -a c "clear"
alias wifi="nmcli radio wifi"
abbr -a pt "ping -c 3 8.8.8.8"


#Git shortcuts
abbr -a gp "git commit -a && git push"
abbr -a gf "cat ~/.config/fish/config.fish > ~/g/dots/config.fish"
abbr -a gsw "cat ~/.config/sway/config > ~/g/dots/sway-config"
abbr -a gi "cat ~/.config/i3/config > ~/g/dots/i3-config"
abbr -a gcd "cd ~/g/dots"
abbr -a gv "cat ~/.config/nvim/init.vim > ~/g/dots/nvimrc"


#systemd shortcuts
abbr -a stt "systemctl status"
abbr -a sta "sudo systemctl start"
abbr -a stp "sudo systemctl stop"
abbr -a br "sudo systemctl restart bluetooth.service"
abbr -a sen "sudo systemctl enable"
abbr -a sdi "sudo systemctl disable"
abbr -a sst "sudo systemctl"
abbr -a pr "systemctl --user restart pipewire.service"
abbr -a sr "sudo systemctl restart"
abbr -a sen "sudo systemctl enable --now"
abbr -a sdi "sudo systemctl disable --now"
abbr -a stu "systemctl --user"


#Bluetooth shortcuts
abbr -a bs 'echo -e "power on\n scan on\n connect 41:42:9E:4C:7B:BB\n scan off" | bluetoothctl'
abbr -a bh 'echo -e "power on\n scan on\n connect A4:77:58:7E:48:2E\n scan off" | bluetoothctl'
abbr -a b 'echo -e "power on\n scan on" | bluetoothctl && bluetoothctl'
abbr -a bp 'echo -e "power off" | bluetoothctl && exit'


#Other Shortcuts
abbr -a aud "mpv --no-video"

#Autojump
if test -f /usr/share/autojump/autojump.fish ; . /usr/share/autojump/autojump.fish ; end
