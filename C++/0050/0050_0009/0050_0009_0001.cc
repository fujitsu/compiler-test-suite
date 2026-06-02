#include <stdio.h>
#include <stdlib.h>

#if POOR_MACHINE
# define 	ASIZE (0x1000)
#elif __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif

struct TAG {
  signed char array[ASIZE + 1];
}; 

void sub(signed char array[], long n);

void test(void)
{
  struct TAG *st = (struct TAG *)malloc(sizeof(struct TAG));

  
  sub(st->array, ASIZE);
  
  if( st->array[0] != 1 )       abort();
  if( st->array[ASIZE-1] != 2 ) abort();
  
  if( (&st->array[ASIZE]-&st->array[0]) != ASIZE ) {
    abort();
  }
END:
  puts("PASS");

  free(st);
}

