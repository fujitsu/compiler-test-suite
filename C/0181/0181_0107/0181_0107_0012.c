#include <stdio.h>
struct ss1 {
  signed  int  f2 : 27;
  signed  int  f3 : 3;
  signed  long  f4 : 32;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0x7123456;
  v42.f3 = 0x7;
  v42.f4 = 0xf1234567;
  return v42;
}

int lto_sub_13()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f2==0xff123456)
    printf("ok\n");
  else
    printf("ng\n");

  if(v57.f3==0xffffffff)
    printf("ok\n");
  else
    printf("ng\n");


  if(v57.f4==0xfffffffff1234567)

    printf("ok\n");
  else
    printf("ng\n");
}
