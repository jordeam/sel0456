GCC = gcc

exemplo-asm: exemplo-asm.c
	$(GCC) $< -g -lm -o $@

exemplo-asm.s: exemplo-asm.c
	$(GCC) -S -O2 $<
