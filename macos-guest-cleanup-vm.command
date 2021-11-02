#!/usr/bin/env bash
dir=${0%/*}; if [ "$dir" = "$0" ]; then dir="."; fi; cd "$dir"
sudo pmset hibernatemode 0; 
sudo rm -f /var/vm/sleepimage;
sudo "/Library/Application Support/VMware Tools/vmware-tools-cli" disk shrink /;
