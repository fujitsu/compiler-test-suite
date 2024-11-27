
#include <stdio.h>
int main() {
  unsigned long long int i,j,k;
  double e;

  i=0xf000000000000000;
  k=__builtin_ffsll(i);
  printf("61:%d \n",k);

  i=0x8000000000000000;
  k=__builtin_ffsll(i);
  printf("64:%d \n",k);

  i=0x0000000000000000;
  k=__builtin_ffsll(i);
  printf(" 0:%d \n",k);

  return 0;
}
