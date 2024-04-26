#include <stdio.h>
struct ss1 {
  signed  long long int f2 : 64;
  signed  int  f3 : 32;
  signed  int  f4 : 32;
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0x123456789abcdef;
  v42.f3 = 0x12345678;
  v42.f4 = 0x87654321;
  return v42;
}
int main()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f2==0x123456789abcdef)
    printf("ok\n");
  else
    printf("ng v57.f2=%llx\n",v57.f2);

  if( v57.f3 == 0x12345678)
    printf("ok\n");
  else
    printf("ng v57.f3=%x\n",v57.f3);
  
  if(v57.f4 == 0x87654321)
    printf("ok\n");
  else
    printf("ng v57.f4=%x\n",v57.f4);
}
