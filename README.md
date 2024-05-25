# triton-riscv
```console
rm *.o a.out
llc -march=riscv64 -mattr=+d kernel_riscv.ll -filetype=obj
riscv64-unknown-linux-gnu-g++ -c launch.cpp
riscv64-unknown-linux-gnu-g++ -static launch.o kernel_riscv.o
qemu-riscv64-static a.out
```
