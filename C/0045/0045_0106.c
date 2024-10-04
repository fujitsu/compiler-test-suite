#include <stdio.h>

long long u;

void foo()
{
  int i;
  for(i=-2147483647; i<=2147483646; i++) {
    u++;
  }
}
int main()
{
  foo();

  if( u == (2147483646LL)-(-2147483647LL)+1 ) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}
