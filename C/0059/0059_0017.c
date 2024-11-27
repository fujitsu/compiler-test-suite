
#include <stdio.h>
#include <stdlib.h>

int main() {
  unsigned int i,j,k;
  double e;

  k= __builtin_choose_expr(sizeof(e)==8, 8 ,4);
  if (k==8) printf("__builtin_choose_expr ok\n");
  else      printf("__builtin_choose_expr ng\n");

  i=0xf0000000;
  k=__builtin_ffs(i);
  printf("29:%d \n",k);

  i=0x80000000;
  k=__builtin_ffs(i);
  printf("32:%d \n",k);

  i=0x00000000;
  k=__builtin_ffs(i);
  printf(" 0:%d \n",k);

  return 0;
}
