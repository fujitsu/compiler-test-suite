#include <stdio.h>
#include <stdlib.h>

#if POOR_MACHINE
# define 	ASIZE (0x100000)
#elif __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif

void sub(signed char array[], long n);

void test(void)
{
  static  signed char array[ASIZE];
  
  sub(array, ASIZE);
  
  if( array[0] != 1 )       abort();
  if( array[ASIZE-1] != 2 ) abort();
  
  if( (&array[ASIZE]-&array[0]) != ASIZE ) {
    abort();
  }
  puts("PASS");
}

