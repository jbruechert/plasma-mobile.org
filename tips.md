---
title: General Tips
parmalink: /tips
layout: default
---

Copy a file to the phone via USB
--------------------------------

To copy a file from your host-system to the phone:

    $ scp /path/to/file phablet@10.15.19.82:/home/phablet

The password for the “phablet” user is “1234”.

Remote Connecting via USB
-------------------------

If your phone is connected via usb and running Plasma Mobile, it can be
remotely controlled from the attached computer via command line using
ssh:

    $ ssh phablet@10.15.19.82

The password is “1234”.

Once connected, you can resize the /-root partition, to be able to
install more programs:

    $ sudo resize-root-partition
    $ sudo reboot

To easily establish a wifi connection, execute:

    $ wifi-setup SSID PASSWORD

Notes:
-----

-   Root-Password on the phone is ‘1234’.
