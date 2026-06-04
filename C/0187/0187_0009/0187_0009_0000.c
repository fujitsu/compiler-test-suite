#include <stdio.h>
#include <stdlib.h>

#if POOR_MACHINE
# define 	ASIZE (0x1000)
#elif __sparcv9 || __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif

void test(void);

int main(int argc, char *argv[])
{
  test();
  return 0;
}

void sub(signed char array[], long n)
{
  if( n != ASIZE ) {
    abort();
  }
  array[0] = 1;
  array[ASIZE-1] = 2;
}

