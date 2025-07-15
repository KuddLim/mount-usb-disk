# mount-usb-disk
I was running Home Assistant with supervised installation.

Due to [deprecation of supervisted installation method](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems/), I need to migrate all everything to Virtual Box guest OS. I was using frigate and save footages to external hard drive.

In VirtualBox installation, it is not easy to access directory owned by Host OS, so I need to passthrough physical hard drive into guest os using VMDK.

This addon automatically mount VMDK into local directory.

