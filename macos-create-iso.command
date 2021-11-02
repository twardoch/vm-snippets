#!/usr/bin/env bash
dir=${0%/*}; if [ "$dir" = "$0" ]; then dir="."; fi; cd "$dir"

# Change MACOSNAME to the name of your macOS version, then paste the text below into Terminal.app

MACOSNAME="Monterey" && sudo hdiutil create -o /tmp/${MACOSNAME} -size 16384m -volname ${MACOSNAME} -layout SPUD -fs HFS+J && sudo hdiutil attach "/tmp/${MACOSNAME}.dmg" -noverify -mountpoint "/Volumes/${MACOSNAME}" && sudo "/Applications/Install macOS ${MACOSNAME}.app/Contents/Resources/createinstallmedia" --volume "/Volumes/${MACOSNAME}" --nointeraction && hdiutil eject -force "/Volumes/Install macOS ${MACOSNAME}"; hdiutil convert "/tmp/${MACOSNAME}.dmg" -format UDTO -o "~/Desktop/${MACOSNAME}" && mv -v "~/Desktop/${MACOSNAME}.cdr" "~/Desktop/${MACOSNAME}.iso" && sudo rm -fv "/tmp/${MACOSNAME}.dmg";

# Then press Enter
