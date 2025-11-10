#include <stdio.h>
struct ss1 {
  char f4 : 1;  
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f4 = 0x1;
  return v42;
}

int lto_sub_19()
{
  struct ss1 v57;
  v57 = v5();
#if defined(__GNUC__)
  if(v57.f4==0xffffffff)
#else
  if(v57.f4==0xffffffff)
#endif
    printf("ok\n");
  else
    printf("ng\n");
}

