

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>


int main()
{
  char *str1;

  { 
    printf(" %d \n",abs(-100));
  }

  { 
    str1 = (char *)malloc(100);
  }

  { 
    div_t x;
    x = div(100,5);
    printf(" %d \n",x.quot);
  }

  { 
#if CFE_TEST
    printf(" %d \n",exp(0.3));
#else
    exp(0.3);
#endif
  }

  { 
#if CFE_TEST
    printf(" %d \n",pow(100, 5));
#else
    pow(100, 5);
#endif
  }

  { 
#if CFE_TEST
    printf(" %d \n",round(100));
#else
    round(100);
#endif
  }


  { 
    free(str1);
  }

  printf("  : OK \n");
  return 0;
}
