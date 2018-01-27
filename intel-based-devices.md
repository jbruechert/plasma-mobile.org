---
title: Intel based devices
permalink: /intel-based-devices/
layout: default
---

Here is a link to amd64-compatible ISOs for intel-based devices (PCs,
laptops/netbooks or tablets like wetab, exopc) based on Arch:
<http://arch.pangea.pub/ISO/plasma-mobile/>

Prepare a USB stick with the ISO (using “dd” or diskimager).
Boot from USB, then in boot-menu choose “Install Ubuntu” (trying ubuntu
in live mode may sometimes not working).
When installing, choose “phablet” as username and “1234” as password.

After installation has finished, start as normal, and if you experience
Plasma Mobile is not coming up, switch to tty2 and edit /etc/environment
by adding
` MESA_GL_VERSION_OVERRIDE=2.0`

If the system is read-only, execute
`mount -o rw,remount /`
and then you’re able to edit anything.
