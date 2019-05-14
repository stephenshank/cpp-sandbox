# standard compile options for the c++ executable
FLAGS = -fPIC

# the python interface through swig
PYTHONI = -I${HOME}/Software/anaconda3/envs/haplotype-reconstruction/include/python3.6m
PYTHONL = -Xlinker -export-dynamic

# default super-target
all: 
	g++ -fPIC -c kitty.cpp -o kitty.o
	swig -c++ -python -o kitty_wrap.cxx kitty.i 
	g++ $(FLAGS) $(PYTHONI) -c kitty_wrap.cxx -o kitty_wrap.o
	g++ $(PYTHONL) $(LIBFLAGS) -shared kitty.o kitty_wrap.o -o _kitty.so
