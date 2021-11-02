# vm-snippets

Some snippets for dealing with virtual machines, mostly for VMWare and macOS.

## VMWare

### Inside Windows guest system

#### [windows-guest-cleanup-vm.bat](./windows-guest-cleanup-vm.bat)

Shrinks Windows VMWare virtual machine.

1. Run your Windows VMWare virtual machine guest system
2. Install VMWare Tools in the guest system
3. Copy this file into your Windows guest system, for example into `~/Desktop`
4. In the guest system, double-click to run or right-click and choose Open

#### [macos-guest-cleanup-vm.command](macos-guest-cleanup-vm.command)

Shrinks macOS VMWare virtual machine.

1. Run your Windows VMWare virtual machine guest system
2. Install VMWare Tools in the guest system
3. Copy this file into your macOS guest system, for example into `/Applications`
4. In Terminal, `cd` to the folder where you saved it and type `chmod gou+x macos-guest-cleanup-vm.command`, press Enter
5. In the guest system, double-click to run or right-click and choose Open

#### [macos-host-cleanup-vmware-vms.command](macos-host-cleanup-vmware-vms.command)

Defragments and shrinks all VMWare Fusion virtual machines that are present in `~/Documents/Virtual Machines` on your macOS host.

1. Save this file in your macOS host, for example into `~/Documents/Virtual Machines`
2. In Terminal, `cd` to the folder where you saved the file and type `chmod gou+x macos-host-cleanup-vmware-vms.command`, press Enter
3. Double-click to run or right-click and choose Open

#### [macos-create-iso.command](macos-create-iso.command)

Produces a macOS ISO file from `Install macOS nnnnn.app`. You can then install macOS as a guest system in your VMWare.

1. In your macOS host, download the operating system installer using App Store, so you have something like `/Applications/Install macOS Monterey.app`
2. Save this file for example in `~/Desktop`
3. Open the file in a text editor and adjust the name of your operating system that gets assigned to the `MACOSNAME` variable
4. In Terminal, `cd` to the folder where you saved the file and type `chmod gou+x macos-create-iso.command`, press Enter
5. Double-click to run or right-click and choose Open. Wait until it finishes, you should get something like `~/Desktop/Monterey.iso`
6. Run VMWare Fusion, choose _File > New_ and drag the ISO into _Install from disc or image_, proceed

