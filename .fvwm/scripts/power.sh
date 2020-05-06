rofi_command="rofi -theme menu01.rasi"
uptime=$(uptime -p | sed -e 's/up //g')


# Options
shutdown="襤"
reboot="ﰇ"
lock=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock"

chosen="$(echo -e "$options" | $rofi_command -p "Power | 祥  $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        exit
        ;;
esac
