menumain="rofi -theme menu01.rasi"
uptime=$(uptime -p | sed -e 's/up //g')


# Options
i1="	Terminal"
i2="	Sublime"
i3="	Thunar"
i4="	Temas"
i5="	Chrome"
i6="	FaceBoock"
i7="	YouTube"
i8="	Qbittorrent"

# Variable passed to rofi
options="$i1\n$i2\n$i3n$i4\n$i5\n$i6\n$i7\n$i8"

chosen="$(echo -e "$options" | $menumain -p "Power | 祥  $uptime" -dmenu -selected-row 2)"
case $chosen in
    *$i1*)
        xfce4-terminal
        ;;
    *$i2*)
        subl
        ;;
    *$i3*)
        thunar
        ;;
    *$i4*)
        lxappearance
        ;;
    *$i5*)
        google-chome-stable
        ;;
    *$i6*)
        google-chome-stable faceboock.com
        ;;
    *$i7*)
        google-chome-stable youtube.com
        ;;
    *$i8*)
        qbittorrent
        ;;
esac