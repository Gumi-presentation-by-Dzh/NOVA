#
# Makefile for the linux pmfs-filesystem routines.
#

obj-m += pmfs.o pmem.o

pmfs-y := bbuild.o balloc.o dir.o file.o inode.o namei.o super.o symlink.o ioctl.o pmfs_stats.o journal.o xip.o wprotect.o

all:
	make -C /media/root/External-Linux/linux-kernel M=`pwd`

running:
	make -C /media/root/New_Volume1/linux-kernel M=`pwd`
	
pmep:
	make -C /root/Andiry/prd M=`pwd`
	
clean:
	rm -rf *.o *.mod.c modules.* Module.* *.ko
