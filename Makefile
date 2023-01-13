all: hello-dibingfa.iso

hello-dibingfa.iso: boot.s
	nasm boot.s -o boot.bin
	dd if=/dev/zero of=empty-floppy.img bs=1024 count=1440
	cp empty-floppy.img bootable-floppy.img
	dd if=boot.bin of=bootable-floppy.img bs=512 count=1 conv=notrunc
	mkisofs -r -b bootable-floppy.img -o hello-dibingfa.iso .

clean:
	rm -rf *.bin *.img

cleanall:
	rm -rf *.bin *.img *.iso 
