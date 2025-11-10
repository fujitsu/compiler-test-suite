#include <stdio.h>
struct ss1 {
  signed  int  f2 : 32;
  signed  long  f3 : 3;
  signed  int  f4 : 27;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0xf1234567;
  v42.f3 = 0x7;
  v42.f4 = 0x7123456;
  return v42;
}

int lto_sub_6()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f2==0xf1234567)
    printf("ok\n");
  else
    printf("ng v57.f2=%x\n",v57.f2);


    if(v57.f3==0xffffffff)

      printf("ok\n");
    else
      printf("ng v57.f3=%lx\n",v57.f3);

  if(v57.f4==0xff123456)
    printf("ok\n");
  else
    printf("ng v57.f4=%x\n",v57.f4);
}
