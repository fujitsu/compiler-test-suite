#include <stdio.h>
struct ss1 {
  signed  long long int  f2 : 64;
  signed  long long int  f3 : 64;
  signed  long long int  f4 : 64;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0x123456789abcdef;
  v42.f3 = 0xfedcba987654321;
  v42.f4 = 0x987654321fedcba;
  return v42;
}

int lto_sub_3()
{
  struct ss1 v57;
  long f2,f3,f4;
  v57 = v5();

  if(v57.f2 == 0x123456789abcdef)
    printf("ok\n");
  else
    printf("ng v57.f2=%lx\n",f2);

  if(v57.f3 == 0xfedcba987654321)
    printf("ok\n");
  else
    printf("ng f3=%lx\n",f3);

  if(v57.f4 == 0x987654321fedcba)
    printf("ok\n");
  else
    printf("ng f4=%lx\n",f4);
}
