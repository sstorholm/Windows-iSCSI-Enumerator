# Windows-iSCSI-Enumerator

When migrating servers which rely on a large number of iSCSI mapped disks, it can quickly get a bit overwhelming figuring out which drive relates to which iSCSI target.

This script does all that for you, it loops through every disk on the system that's mounted through iSCSI, fetches the drive letter, size and iSCSI target parameters for that disk, and stores it in a custom object.

Run the script with -Out-Gridview or Out-File to output the Powershell Custom Object in some readable format.

Keep in mind that this script takes a while to run, around 15-30 seconds per disk on the systems I've tried it on, and due to the nature of Powershell you'll get an empty Gridview at first, and then the disks will start appearing one by one, so don't be alarmed if you at first don't see anything.
