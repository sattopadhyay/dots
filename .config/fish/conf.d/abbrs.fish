abbr -a -- aud 'mpv --no-video'
abbr -a -- c clear
abbr -a -- deps "pacman -Qq | fzf --preview 'pactree -lur {}' --layout reverse --bind 'enter:execute(pactree -lu {} | less)'"
abbr -a -- e exit
abbr -a -- f 'nvim ~/.config/fish/config.fish'
abbr -a -- F 'pacman -F'
abbr -a -- g 'grep --color'
abbr -a -- gp 'git commit -a && git push'
abbr -a -- grep 'grep --color'
abbr -a -- h 'sudo -E nvim /etc/hosts'
abbr -a -- ip 'ip -color=auto'
#abbr -a -- m 'pacman -Qm'
abbr -a -- m 'pactl set-sink-mute @DEFAULT_SINK@ toggle'
abbr -a -- p poweroff
abbr -a -- pr 'systemctl --user restart pipewire.service'
abbr -a -- pt 'ping -c 3 8.8.8.8'
abbr -a -- Q 'pacman -Q'
abbr -a -- q 'pacman -Qqe'
abbr -a -- Qg 'pacman -Q | grep'
abbr -a -- R 'sudo pacman -Rns'
abbr -a -- s 'ANSIWEATHERRC=~/.config/ansiweather/rc  TERMINAL=footclient _JAVA_AWT_WM_NONREPARENTING=1 GTK_THEME=Adwaita-dark sway'
abbr -a -- S 'sudo pacman -S'
abbr -a -- sc 'nvim ~/.config/sway/config'
abbr -a -- sdi 'sudo systemctl disable --now'
abbr -a -- se 'pacman -Ss'
abbr -a -- sen 'sudo systemctl enable --now'
abbr -a -- sr 'sudo systemctl restart'
abbr -a -- sst 'sudo systemctl'
abbr -a -- sta 'sudo systemctl start'
abbr -a -- stp 'sudo systemctl stop'
abbr -a -- stt 'systemctl status'
abbr -a -- stu 'systemctl --user'
abbr -a -- v 'nvim ~/.config/nvim/init.vim'
abbr -a -- ya "yt-dlp -x --embed-thumbnail --audio-format mp3 --embed-chapters -o '%(title)s.%(ext)s'"
abbr -a -- yd "yt-dlp  -S 'res:480' -o '%(title)s.%(ext)s'"
abbr -a -- ypa "yt-dlp -x --embed-thumbnail --audio-format mp3 -o '%(playlist_index)s. %(title)s.%(ext)s'"
abbr -a -- ypv "yt-dlp -S res:480 -o '%(playlist_index)s. %(title)s.%(ext)s'"
