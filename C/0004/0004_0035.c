#include <stdio.h>
#include <stdio.h>

static void init_d(int *a)
{
  *a=3;
}

int main()
{
  int x,y,p,q;
  int m1;

  printf("test start\n");

  init_d(&x);
  init_d(&y);
  init_d(&p);
  init_d(&q);

  if (p<q) {
    if (x>y)
      m1=1;
    else
      m1=1;
  }
  else {
    if (x==y)
      m1=0;
    else
      m1=0;
  }

  if (m1==0)
    printf("test OK\n");
  else
    printf("test NG\n");

  printf("test end\n");
}
