#!/usr/bin/env bash
dir=${0%/*}; if [ "$dir" = "$0" ]; then dir="."; fi; cd "$dir"

vmd="/Applications/VMware Fusion.app/Contents/Library/vmware-vdiskmanager" && \
  find "${HOME}/Documents/Virtual Machines.localized" -iname "*.vmdk" | \
  grep -v -e "-s\d\d\d" | \
    while read p; do
      "$vmd" -d "$p"
      "$vmd" -k "$p"
    done
