#include <stdio.h>
#include <stdlib.h>

#if POOR_MACHINE
# define 	ASIZE (0x100000)
#elif __x86_64__ || __aarch64__
# define 	ASIZE (0x100000000L)
#else
# define 	ASIZE (0x7fffff00)
#endif

struct TAG {
  signed char array[ASIZE];
}; 

static  struct TAG st;
  
void sub(signed char array[], long n);

void test(void)
{
  sub(st.array, ASIZE);
  
  if( st.array[0] != 1 )       abort();
  if( st.array[ASIZE-1] != 2 ) abort();
  
  if( (&st.array[ASIZE]-&st.array[0]) != ASIZE ) {
    abort();
  }
  puts("PASS");
}

