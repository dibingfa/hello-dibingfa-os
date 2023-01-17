all: hello-dibingfa.iso

isoonly: hello-dibingfa.iso
	rm -rf *.bin *.img

hello-dibingfa.iso: bootable-floppy.img
	mkdir hellodir
	cp bootable-floppy.img hellodir/bootable-floppy.img
	cd hellodir && mkisofs -r -b bootable-floppy.img -o hello-dibingfa.iso .
	mv hellodir/hello-dibingfa.iso ./
	rm -rf hellodir

bootable-floppy.img: empty-floppy.img boot.bin
	cp empty-floppy.img bootable-floppy.img
	dd if=boot.bin of=bootable-floppy.img bs=512 count=1 conv=notrunc

boot.bin: boot.s
	nasm boot.s -o boot.bin

empty-floppy.img:
	dd if=/dev/zero of=empty-floppy.img bs=1024 count=1440

clean:
	rm -rf *.bin *.img

cleanall:
	rm -rf *.bin *.img *.iso hellodir 
