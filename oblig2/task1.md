# Task 1 #

1. **Explain Lines 5–13 and what is the purpose of these lines?**
   The purpose of the lines is to define some constants that can be used in the code to make it more readable.
   Its easier to remember SYS_EXIT than it is to remember that 1 is the SYS_EXIT call

2. **What does Line 17 do? In particular, explain resb in this line.**
   The `resb` instruction reserves a block of memory in the data section.
   The `4` specifies that it should be 4 bytes reserved
   The `siffer` is just a variable name so the reserved space can be accessed later

3. **Which lines in the program are supposed to print the messages below? Explain your answer.**
   `Skriv to ensifrede tall skilt med mellomrom.`
   `Summen av tallene maa vaere mindre enn 10.`
   It is the line `int 80h` that actually prints the line,
   the ones before just move the messages into the correct buffers
   for the system to write to STDOUT

4. **After executing the instruction on Line 43, which line the program counter will jump to?**
   It will jump to the first instruction inside the lessiffer function, which is line 89.

5. **Which lines are included in the lessiffer block?**   
   lines 89 and 90

6. **The block Feil on Line 113 is called conditionally from Lines 104 & 106. Where does the ret instruction on Line 122 return to?**
   `ret` on line 122 returns to the _start section where the lessiffer function was called.

