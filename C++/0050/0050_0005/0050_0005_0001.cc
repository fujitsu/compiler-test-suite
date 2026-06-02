#include <stdio.h>
#include <stdlib.h>


#if 1
# define 	ASIZE (0x100000)
#elif POOR_MACHINE
# define 	ASIZE (0x100000)
#elif __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif


signed char array[ASIZE];

void test(void);

int main(int argc, char *argv[])
{
  array[0] = 1;
  array[1] = 2;
  test();
  return 0;
}

void sub(signed char prray[], long n)
{
  if( n != ASIZE ) {
    abort();
  }
  prray[ASIZE-1] = 2;
}

