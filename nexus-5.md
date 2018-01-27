---
title: Nexus 5/X
permalink: /nexus-5/
layout: default
---

## Plasma Phone Reference System

Recommended Device: **Nexus 5X (bullhead), Nexus 5 (hammerhead)**

Needed software tools: **adb, fastboot**

If you flash Plasma Mobile for the first time, you likely need to follow
steps 1A and 1B.
After successfully done those steps, you can always jump straight to
step 2 for future flashing.

### 1A. Unlock (skip if already unlocked)

Unlock the Nexus 5:
<https://www.androidpit.com/how-to-unlock-nexus-5-bootloader>
Unlock the Nexus 5X:
<https://forum.xda-developers.com/nexus-5x/general/guides-how-to-guides-beginners-t3206930>

### 1B. Put into firmware mode and run once:

**CAUTION: This will erase the complete memory of your Nexus 5 device!
Please ensure you have a backup of all your data before you proceed.**

    $ fastboot format cache 
    $ fastboot format userdata

### 2. Flashing Plasma Mobile (PM)

Put your Nexus 5/X in fastboot mode (press volume down + power button
at once), then open a terminal and run

    $ git clone https://github.com/plasma-phone-packaging/pm-flashtool.git
    $ cd pm-flashtool
    $ ./pm-flash

The -c parameter of script can be used to re-use the **cache** instead
of downloading all the files again.

The -p ***platform*** parameter currently accepts ***neon*** or
***arch***

It will download all files required and store them in cache subdir, e.g.
for Nexus 5X (*bullhead)*:

-   pm-rootfs-20161025-140532.tar.gz (Plasma Mobile in an LXC container)
-   recovery.img (TWRP recovery img)
-   system.img (AOSP system img)
-   boot.img (AOSP boot img)

Then the TWRP Recovery img is used as a tool to flash all other
components to the target device.

Note: The above could take quite some time (15-20 minutes) and require
to enter your password to continue.

### After Flashing is done

If successfull, you should automatically see the Login Screen.
The password to unlock is ‘1234’.

(the username to enter the login prompt for your phone from an adb shell
desktop terminal is ‘phablet’, password is ‘1234’).

See [more tips what to do after flashing
here](http://plasma-mobile.org/tips/).
