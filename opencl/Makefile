all: 1_a-candidate-for-the-simplest-opencl-program

%: %.c
	gcc -std=c99 -Wall -DUNIX -g -DDEBUG -DMAC -arch x86_64 -o $@ $@.c -framework OpenCL
