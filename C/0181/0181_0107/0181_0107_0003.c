#include <stdio.h>
struct ss1 {
  signed  int  f2 : 32;
  signed  int  f3 : 32;
  signed  long long int  f4 : 64;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0x98765432;
  v42.f3 = 0xfedcba98;
  v42.f4 = 0x123456789abcdef;
  return v42;
}

int lto_sub_4()
{
  struct ss1 v57;
  long f2,f3,f4;
  v57 = v5();

  if(v57.f2==0x98765432)
    printf("ok\n");
  else
    printf("v57.f2=%x\n",v57.f2);

  if(v57.f3==0xfedcba98)
    printf("ok\n");
  else
    printf("v57.f3=%x\n",v57.f3);

  if(v57.f4==0x123456789abcdef)
    printf("ok\n");
  else
    printf("v57.f4=%lx\n",v57.f4);
}
