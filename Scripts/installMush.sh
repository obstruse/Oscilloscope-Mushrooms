#!

# exit on error
set -e

echo ' '
echo Install Desktop Icons...
projDir=$(dirname $(dirname $(readlink -f $0)))
userDir=$(eval echo ~$SUDO_USER)

printf "\
[Desktop Entry]\n\
Name=heat\n\
Comment=Mushrooms\n\
Icon=/usr/share/pixmaps/supercollider.xpm\n\
Exec=purr-data %s/mushPanel.pd\n\
Type=Application\n\
Encoding=UTF-8\n\
Terminal=false\n\
Categories=None;\n" \
 $projDir  >$userDir/Desktop/mushPanel.desktop
