#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <stdarg.h>
void iadd(long long int num,...);
int main( ) {
iadd(3LL,16777215LL,-32767LL);
exit (0);
}
void iadd(long long int num,...) {
long long int i,sum;

  va_list ap;

  va_start(ap, num);


  sum = va_arg(ap, long long int);
  if (sum==16777215LL) printf("** kaimk2040-(1) ok\n");
  else          printf("** kaimk2040-(1) ng\n");
  sum = va_arg(ap, long long int);
  if (sum== -32767LL) printf("** kaimk2040-(2) ok\n");
  else          printf("** kaimk2040-(2) ng\n");
}

