#include <stdio.h>
struct ss1 {
  signed  long  f2 : 4;
  signed  long  f3 : 5;
  signed  long  f4 : 3;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0xa;
  v42.f3 = 0x1f;
  v42.f4 = 0x6;
  return v42;
}

int lto_sub_17()
{
  struct ss1 v57;
  v57 = v5();

    if(v57.f2==0xfffffffffffffffa)

      printf("ok\n");
    else
      printf("ng\n");


    if(v57.f3==0xffffffffffffffff)

      printf("ok\n");
    else
      printf("ng\n");


    if(v57.f4==0xfffffffffffffffe)

      printf("ok\n");
    else
      printf("ng\n");
}
