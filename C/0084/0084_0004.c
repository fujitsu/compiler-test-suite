#include <stdio.h>

int main(void) 
{
  int i = 4;
  for ( ; i; --i) {
    printf("%d ",i);
  }
  printf("\n");
  
  return 0;
}
