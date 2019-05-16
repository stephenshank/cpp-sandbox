all: _example.so

CC=gcc
example.py example_wrap.c: example.i
	swig -python example.i

example.o example_wrap.o: example.c example_wrap.c
	$(CC) -std=c99 -DUNIX -g -DDEBUG -m64 -fPIC -c example.c example_wrap.c -I${HOME}/Software/anaconda3/envs/haplotype-reconstruction/include/python3.6m -lOpenCL

_example.so: example.o example_wrap.o
	ld -shared example.o example_wrap.o /usr/lib/x86_64-linux-gnu/libOpenCL.so.1 -o _example.so

