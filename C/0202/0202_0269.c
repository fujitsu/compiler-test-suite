
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

int main()
{
  char *str1, *str2, *str3, *str4, *str5;
  char *tmp;

  { 
    str1 = (char *)malloc(100);
  }

  { 
    str2 = (char *)calloc(100, 1);
  }

  {
    if ((tmp = (char *)realloc(str1,200)) == NULL) {
      printf("\n");
    } else {
      str1 = tmp;
    }
  }

  { 
    posix_memalign((void * *)&str3, 32, 100);
  }

  { 
    str4 = (char *)memalign(32, 100);
  }

  { 
    str5 = (char *)valloc(100);
  }

  { 
    free(str1);
    free(str2);
    free(str3);
    free(str4);
    free(str5);
  }

  printf("  : OK \n");
  return 0;
}
