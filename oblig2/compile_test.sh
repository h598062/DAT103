nasm -f elf -F dwarf -g oblig2_test.asm
ld -m elf_i386 -o oblig2_test oblig2_test.o
./oblig2_test
