#include <stdio.h>
#include <stdlib.h>

#if 1
# define 	ASIZE (0x100000)
#elif POOR_MACHINE
# define 	ASIZE (0x100000)
#elif __sparcv9 || __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif

void sub(signed char array[], long n);

void test(void)
{
  static signed char array[ASIZE] = { 1, 2 };
  
  sub(array, ASIZE);
  
  if( array[ASIZE-1] != 2 && array[ASIZE-1] != 0 ) abort();
  
  if( (&array[ASIZE]-&array[0]) != ASIZE ) {
    abort();
  }
  puts("PASS");
}

