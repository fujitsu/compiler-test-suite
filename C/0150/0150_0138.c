#include <stdlib.h>
#include <stdio.h>
#include <math.h>

short a = -4;
int main(){
  short b;
  b = a * 4;
  if(b == -16)
    printf(" test OK\n");
  else
    printf(" test NG b = %d\n",b);
exit (0);
}
