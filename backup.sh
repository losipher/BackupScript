#!/bin/bash
if mountpoint -q /media/mountPoint
	then 
		echo "filesystem mounted"
		rsync -av --progress /home/carlos/ /media/mountPoint/backups/
		#umount /media/mountPoint/
		#cryptsetup luksClose volume1
	else
		echo "filesystem not mounted"
fi
