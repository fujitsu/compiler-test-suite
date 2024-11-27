#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub();

int i;
int main()
{
  int sum=0;
  printf("***** unroll019 ***** unroll 0 never 1 not 0\n");
  for(i=0;i<10;i++) {
    sub();
    sum=sum+i;
  }
  if( sum == 25 ) {
    puts("ok");
  }
  else {
    puts("ng");
  }
  printf("***** unroll019 ***** end\n");
exit (0);
}

int sub()
{
    i++;
}
