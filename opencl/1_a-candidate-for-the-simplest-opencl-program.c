#include <stdio.h>
#include <OpenCL/cl.h>

int main(int argc, char const* argv[])
{
  cl_int num_platforms;
  clGetPlatformIDs(100, NULL, &num_platforms);
  printf("%d platform(s) detected.\n", num_platforms);
  return 0;
}
