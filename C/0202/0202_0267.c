#include <stdio.h>
#include <stdlib.h>


int main() {

  char * str = (char *)malloc(100);

   free(str);
#if CFE_TEST
   free(str);
#endif

  printf("  : OK \n");
  return 0;
}


