#include <stdio.h>
struct ss1 {
  signed  char  f2 : 4;
  signed  char  f3 : 5;
  signed  char  f4 : 3;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0xa;
  v42.f3 = 0x1f;
  v42.f4 = 0x6;
  return v42;
}

int lto_sub_14()
{
  struct ss1 v57;
  v57 = v5();
  if(v57.f2==0xfffffffa)
    printf("ok\n");
  else
    printf("ng\n");

  if(v57.f3==0xffffffff)
    printf("ok\n");
  else
    printf("ng\n");

  if(v57.f4==0xfffffffe)
    printf("ok\n");
  else
    printf("ng\n");
}
