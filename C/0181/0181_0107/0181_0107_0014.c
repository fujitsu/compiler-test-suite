#include <stdio.h>
struct ss1 {
  signed  char  f2 : 4;
  signed  char  f3 : 5;
  signed  char  f4 : 3;
  int f5;
  char f6;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0xb;
  v42.f3 = 0x1c;
  v42.f4 = 0x6;
  v42.f5 = 0xf1234567;
  v42.f6 = 0xab;
  return v42;
}

int lto_sub_15()
{
  struct ss1 v57;
  v57 = v5();
  if(v57.f2==0xfffffffb)
    printf("ok\n");
  else
    printf("ng\n");
  if(v57.f3==0xfffffffc)
    printf("ok\n");
  else
    printf("ng\n");
  if(v57.f4==0xfffffffe)
    printf("ok\n");
  else
    printf("ng\n");
  if(v57.f5==0xf1234567)
    printf("ok\n");
  else
    printf("ng\n");
  if(v57.f6==0xffffffab)
    printf("ok\n");
  else
    printf("ng\n");
}
