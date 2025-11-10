#include <stdio.h>

extern int ipo_cse_sub1(int *i1, int *i2);
extern int ipo_cse_sub2(int *i1, int *i2);
static void init_i(int *i1, int *i2);

int main(void)
{
  int i1, i2;
  int k1, k2, k3;

  init_i(&i1,&i2);
  k1 = i1 + i2;
  k2 = ipo_cse_sub1(&i1, &i2); 
  k3 = ipo_cse_sub2(&i1, &i2); 
  if (k1 == k2 && k2 == k3) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}

static void init_i(int *i1, int *i2)
{
  *i1 = 4;
  *i2 = 8;
}

