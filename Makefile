all: _example.so

example.py example_wrap.c: example.i
	swig -python example.i

example.o example_wrap.o: example.c example_wrap.c
	gcc -fPIC -c example.c example_wrap.c -I${HOME}/Software/anaconda3/envs/haplotype-reconstruction/include/python3.6m

_example.so: example.o example_wrap.o
	ld -shared example.o example_wrap.o -o _example.so

