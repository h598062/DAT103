# Datamaskiner og operativsystemer (Computers and Operating Systems) #

## Supplementary exercises (Set 1) ##

### Problem 1 ###

Which one of the following is a component inside a CPU?

  - [x] Program counter
  
	> En CPU har en Program Counter, dens funksjon er å lagre posisjonen til "neste" instruks som skal kjøres

  - [x] Memory address register
  
	> En CPU har et register som lagrer hvor i minne ting er lagret

  - [x] L1 cache
  
	> En CPU har L1 og L2 cache, de holder data som brukes under kjøring av instrukser

  - [x] All of the above

	>

  - [ ] None of the above

	>

### Problem 2 ###

Sort the following memory components in descending order according to the access time, that is, the component with the lowest access time should be the first, while the one with the highest access time should be the last.

1. Register
2. Level 1 cache
3. Level 2 cache
4. Main memory
5. Solid-state drive (SSD)
6. Magnetic disk
7. Magnetic tape

### Problem 3 ###

Which **one** of the following is the major reason for the implementation of cache memory?

   - [ ] To increase the amount of the system’s internal memory
   - [x] The difference in speeds of operation of the processor and memory
   - [ ] To reduce the memory access and cycle time
   - [ ] None of the above

### Problem 4 ###

Based on the following table which maps memory blocks *B*~i~ to cache lines *L*~j~, e.g., *B*~72~ is mapped to *L*~8~.

| Memory block number ( ***i*** ) | Cache line number ( ***j*** ) |
| :---: | :---: |
| 72 | 8 |
| 100 | 36 |
| 128 | 0 |
| 136 | 8 |
| 256 | 0 |

Assume memory blocks *B*~100~ and *B*~128~ are **in the cache** and all other blocks are **not**.  
What is the number of *cache misses* if a process accesses the blocks in each of the following sequences?  
Justify your answer by identifying which accesses lead to cache misses.

> Antar at vi bruker **Least recently used** (LRU) ved cache-miss erstatning.

1. *B*~100~ ; *B*~256~ ; *B*~100~ ; *B*~128~
	> *B*~100~ ➡️ cache hit
	> *B*~256~ ➡️ cache miss ▶️ erstatt *B*~128~ i minne med *B*~256~
	> *B*~100~ ➡️ cache hit
	> *B*~128~ ➡️ cache miss ▶️ erstatt *B*~256~ i minne med *B*~128~
	> ***2*** *cache miss*
2. *B*~128~ ; *B*~100~ ; *B*~72~ ; *B*~256~ ; *B*~128~ ; *B*~136~ ; *B*~128~
	> *B*~128~ ➡️ cache hit
	> *B*~100~ ➡️ cache hit
	> *B*~72~  ➡️ cache miss ▶️ erstatt *B*~128~ i minne med *B*~72~
	> *B*~256~ ➡️ cache miss ▶️ erstatt *B*~100~ i minne med *B*~256~
	> *B*~128~ ➡️ cache miss ▶️ erstatt *B*~72~ i minne med *B*~128~
	> *B*~136~ ➡️ cache miss ▶️ erstatt *B*~256~ i minne med *B*~136~
	> *B*~128~ ➡️ cache hit
	> ***4*** *cache miss*

### Problem 5 ###

If a main memory consists of 65535 addressable words, how many bits does the address of each of these words have?

> 65535 = 2^16^
> Adressene har 16 bits.

### Problem 6 ###

Consider a computer system with main memory that is word-addressable, and a processor that supports at most 8 GB of memory.  
How many bits should the address bus of the processor at least have?  
***Note:*** *assume a word is two bytes.*

> 1 GB = 1024 MB
> 1 MB = 1024 KB
> 1 KB = 1024 B
> 8 GB = 8 \* 1024 \* 1024 \* 1024 = 8589934592 B
> 8589934592 / 2 = 4294967296
> 4294967296 = 2^32^
> Processoren må ha en 32-bits adresse bus

### Problem 7 ###

A cache line usually contains more than one word to . . .

  - [ ] Speed up the processor

	>

  - [x] Exploit the locality of reference

	>

  - [ ] Free space in the main memory

	>

  - [ ] All of the above

	>

  - [ ] None of the above

	>

### Problem 8 ###

Which one of the following is typically used to reduce memory access time?

  - [ ] Stacks

	> "Stacks of what? Pizzas?" - meg når eg leste denne

  - [ ] Faster processors

	> En raskere prosessor vil ikke nødvendigvis gjøre noe forskjell, med mindre cache/minne-bus hastigheten også økes

  - [x] Main memory with larger capacity

	> På en måte, mer minne =/= mindre access time, men hvis minnet er for lite så vil operativsystemet lagre ekstra data i en såkalt "pagefile" i filsystemet, noe som vil *drastisk* redusere ytelse

  - [x] Cache memory

	> Cache minne er *mye* raskere enn systemminne

  - [ ] Pointers

	> \*insert spiderman pointing meme\*

### Problem 9 ###

Which one of the following is correct if “Programmed I/O” is used to handle I/O operations?

  - [x] The processor is occupied in handling an I/O transfer

	>

  - [x] The processor periodically checks the status of the I/O module

	>

  - [ ] Data transfer from I/O module to memory goes through the processor

	>

  - [ ] All of the above

	>

  - [ ] None of the above

	>

### Problem 10 ###

Which one of the following improves the speed of I/O transfers?

  - [x] Interrupts

	>

  - [x] Direct Memory Access (DMA)

	>

  - [ ] Program-controlled I/O

	>

  - [ ] All of the above

	>

  - [ ] None of the above

	>
