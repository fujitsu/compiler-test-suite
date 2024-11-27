#include <stdio.h>
#include <stdarg.h>
void iadd(long long int num,...);
int main( ) {
iadd(3LL,16777215LL,-32767LL);
}
void iadd(long long int num,...) {
long long int i,sum;

  va_list ap;

  va_start(ap, num);


  sum = va_arg(ap, long long int);
  if (sum==16777215LL) printf("** (1) ok\n");
  else          printf("** (1) ng\n");
  sum = va_arg(ap, long long int);
  if (sum== -32767LL) printf("** (2) ok\n");
  else          printf("** (2) ng\n");
}

