#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/apps.rasi"

# Links
terminal=""
files=""
editor=""
browser=""
music=""
settings=""

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$music"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
	        if [[ -f /usr/bin/alacritty ]]; then
			alacritty &
		else
			msg "Nenhum terminal instalado!!"
		fi
        ;;
    $files)
		if [[ -f /usr/bin/thunar ]]; then
			thunar &
		elif [[ -f /usr/bin/pcmanfm ]]; then
			pcmanfm &
		else
			msg "Nenhum gerenciador de arquivos instalado!!"
		fi
        ;;
    $editor)
		if [[ -f /usr/bin/alacritty ]]; then
			alacritty -e nvim &
		else
			msg "Nenhum editor de texto instalado!!"
		fi
        ;;
    $browser)
		if [[ -f /usr/bin/firefox ]]; then
            firefox &
		else
			msg "Nenhum navegador instalado!!"
		fi
        ;;
    $music)
		if [[ -f /usr/bin/mpv ]]; then
			~/dow/Rofi-radio/./rofi-radio &
		else
			msg "Nenhum radio encontrado!"
		fi
        ;;
esac
