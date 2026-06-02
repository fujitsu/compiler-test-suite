

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>


int main()
{
#if CFE_TEST
  {
    __builtin_abort();
  }
#endif

  { 
    __builtin_alloca(100);
  }

  { 
    int a=10;
    __builtin_clz(a);
  }

  { 
    int a=10;
    __builtin_ctz(a);
  }

  {
    int a=10;
    __builtin_ffs(a);
  }

#if CFE_TEST
  { 
    __builtin_fprintf(" %d","a");
  }
#endif

  printf("  : OK \n");

  return 0;
}
