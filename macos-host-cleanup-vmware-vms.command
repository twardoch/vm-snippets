#!/usr/bin/env bash
dir=${0%/*}; if [ "$dir" = "$0" ]; then dir="."; fi; cd "$dir"

# Paste the text below into Terminal.app

vmf="${HOME}/Documents/Virtual Machines.localized" && vmd="/Applications/VMware Fusion.app/Contents/Library/vmware-vdiskmanager" && find "${vmf}" -iname "*.vmdk" | grep -v -e "-s\d\d\d" | while read p; do "$vmd" -d "$p";  "$vmd" -k "$p"; done;

# Then press Enter
