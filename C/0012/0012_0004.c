#include <stdio.h>
struct ss1 {
  signed  short  f2;
  signed  int  f3 : 32;
  signed  int  f4;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0x1234;
  v42.f3 = 0xf1234567;
  v42.f4 = 0xffffffff;
  return v42;
}
int main()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f2==0x1234)
    printf("ok\n");
  else{
    printf("ng v57.f2=%x\n",v57.f2);
  }

  if((v57.f3 = 0xf1234567))
    printf("ok\n");
  else{
    printf("ng v57.f3=%x\n",v57.f3);
  }

  if((v57.f4 = 0xffffffff))
    printf("ok\n");
  else{
    printf("ng v57.f4=%x\n",v57.f4);
  }
}

