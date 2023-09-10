# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

# Aliases
alias ls='ls -lah --color=auto'
alias mkdir='mkdir -pv'

# Navigation
alias ..='cd ..'

# Misc. Aliases
alias v='nvim'
alias z='zathura'
alias c='clear'
alias neofetch='neofetch --source ~/.config/neofetch/img/Anonymous_emblem.svg.png'
alias b='nvim ~/.config/bspwm/bspwmrc'
alias sx='nvim ~/.config/sxhkd/sxhkdrc'
alias fs='nvim ~/.config/fish/config.fish'
alias ba='nvim ~/.bashrc'
alias po='nvim ~/.config/polybar/config.ini'
alias pi='nvim ~/.config/picom.conf'
alias al='nvim ~/.config/alacritty/alacritty.yml'
alias checkclass='xprop | grep WM_CLASS'
alias sql='mysql -u upsurge11 -p'
alias t='tree -C -h'
alias p='pipes.sh'
alias r='ranger'
alias se='sudoedit'
alias msf='msfconsole'
alias burp='java -jar ~/Tools/burpsuite_pro_v2023.2.2/Loader.jar'

# Pacman and Yay
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias pacfind='pacman -Ss'			 # search for standard pkgs
alias pacin='sudo pacman -S'			 # install standard pkgs
alias pacrem='sudo pacman -Rncs'		 # remove pkgs (both standard and AUR)
alias yaysua='yay -Sua --noconfirm'		 # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias yayfind='yay -Ss'				 # search for AUR pkgs (yay)
alias yayin='yay -S'				 # install AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # remove orphaned packages

# Get Fastest Mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Nmap Aliases
alias nsp="nmap -sP -vv -T4 " # Ping a network.
alias nsweep="nmap -sn -vv -T4 " # Ping Sweep.
alias nstp="sudo nmap -sT -vv -T4 -p " # Check port status in a network.
alias nst="sudo nmap -sT -vv -T4 " # Check port status in an IP.
alias nssp="sudo nmap -sS -vv -T4 -p " # Check port status in a network(stealth mode).
alias nss="sudo nmap -sS -vv -T4 " # Check port status in an IP(stealth mode).
alias no="sudo nmap -O -vv -T4 " # OS detection.
alias na="sudo nmap -A -vv -T4 " # Thorough scan of an IP.
alias nssd="sudo nmap -sS -vv -T4 -D " # Adds an decoy IP while scanning an IP.
alias nscript="sudo nmap -vv -A --script vuln " # Scan knowm vulnerabilities in IP.
alias nnoping="sudo nmap -Pn -A -vv --script vuln " # Thorough scan of an IP when pinging is blocked.
alias nudp="nmap -sU --top-ports " # Scans top most used ports in an IP.

# OpenVPNs
alias THM='sudo openvpn /home/luc1fer/Documents/Open_VPN/THM.ovpn'
alias HTB='sudo openvpn /home/luc1fer/Documents/Open_VPN/HTB_Machines.ovpn'

# Starship Prompt For ~/.config/fish/config.fish

starship init fish | source

figlet -f Banner3 Luc1fer | lolcat
