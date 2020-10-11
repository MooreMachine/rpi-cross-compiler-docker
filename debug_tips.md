# Tips to Debug and Analyze Your Object Files

### Get the corresponding assembly from an executable

```sh
objdump --disassemble --full-contents main
```

### Get the assembly without the instruction bytes

```sh
objdump -S --no-show-raw-insn main
```

### Compare two assembly files and adjust the start address

```sh
diff --suppress-common-lines -y <(objdump -S --no-show-raw-insn --adjust-vma=0xff1c main2) <(objdump -S --no-show-raw-insn main)
```

### Compare the sections in your executables but ignore the addresses

```sh
diff --suppress-common-lines -y <(readelf --sections main2 | awk '{ print $1 $2 $3 }') <(readelf --sections main | awk '{ print $1 $2 $3 }')
```

### Use GDB to see the assembly instructions that you're running in real time

Start GDB: 

```sh
gdb main
```

Set a breakpoint before your main function. I set it at `_dl_start_user` because it's the last function before `main` that actually has a tag. If you have stripped your executable file you will not have a label that refers to the start of your main function:

```sh
b _dl_start_user
start
n
```
