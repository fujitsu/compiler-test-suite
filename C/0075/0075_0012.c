#include <stdio.h>
struct str 
{
  int k4;
  int m4;
};
int main() 
{
  int i;
  struct str a[2];
  struct str *pa = (struct str *)&a[0].m4;
  struct str *ppa = (struct str *)&a[1].k4;
  
  a[1].k4 = 1;
#pragma clang loop unroll_count(3)
  for (i=0; i<=10; ++i){
    pa->m4=ppa->k4+i;
  }
  if (pa->m4 == 56) {
    printf("ok\n");
  }
  else {
    printf("ng %d\n", pa->m4);
  }
}
