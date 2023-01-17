### step1 编译源文件

```sh
nasm boot.s -o boot.bin
```

### step2 生成空的软盘 fd 其实就是空文件 1.44M

```sh
dd if=/dev/zero of=empty-floppy.img bs=1024 count=1440
```

### step3 复制空软盘准备添加内容

```sh
cp empty-floppy.img bootable-floppy.img
```

### step4 将二进制文件 boot.bin 加入软盘开头

```sh
dd if=boot.bin of=bootable-floppy.img bs=512 count=1 conv=notrunc
```

### step5 制作成 iso 镜像

```sh
mkisofs -r -b floppy.img -o hello-dibingfa.iso .
```

### step6 放入 virtual box 执行
