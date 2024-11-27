#include <stdio.h>
unsigned long long i1 = 0xfffffffffffffffULL * 64ULL;
int main()
{
  unsigned long long i2 = 0xfffffffffffffffULL;
  printf("%llx\n",i1);

  if( (i2 * 64ULL) != i1 ) puts("NG");
}
