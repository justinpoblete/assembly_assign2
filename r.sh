#!/bin/bash



#Justin Poblete jpoblete4@csu.fullerton.edu



rm *.o
rm *.out
rm *.lis

echo "Assemble assign2.asm"
nasm -f elf64 -l assign2.lis -o assign2.o assign2.asm

echo "Compile driver.c"
gcc -c -Wall -m64 -fno-pie -no-pie -o driver.o driver.c -std=gnu11


echo "Link all object files"
gcc -m64 -fno-pie -no-pie -o test.out driver.o assign2.o -std=gnu11

echo "Now the program will run"
./test.out
