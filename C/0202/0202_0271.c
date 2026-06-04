#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>

int sub( int a, ...)
{
  int i;
  va_list ap;

  va_start( ap , a);

  for(i=0 ; i<a ; i++) {
    printf("  %d \n",va_arg(ap , int));
  }
  return 0;
}

#define MAXSZ 256
int main()
{
  int *buffer1 = (int *)alloca(10*sizeof(int));

  sub(9, 1, 2, 3, 4, 5, 6, 7, 8, 9);

  printf("  : OK \n");
  return 0;
}
