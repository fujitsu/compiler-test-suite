#include <stdio.h>
struct ss1 {
  signed  long long  f2 : 4;
};

int lto_sub_21()
{
  struct ss1 v57;
  v57.f2 = 0xa;

    if(v57.f2==0xfffffffa)

      printf("ok\n");
    else
      printf("ng\n");
}
