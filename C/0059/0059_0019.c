
#include <stdio.h>
int main() {
  unsigned long i,j,k;
  double e;

  i=0xf0000000;
  k=__builtin_ffsl(i);
  printf("29:%d \n",k);

  i=0x80000000;
  k=__builtin_ffsl(i);
  printf("32:%d \n",k);

  i=0x00000000;
  k=__builtin_ffsl(i);
  printf(" 0:%d \n",k);

  return 0;
}
