#include <stdio.h>
struct ss1 {
  unsigned short f2; 
  signed int f3 : 15;
  char f4 : 1;  
  char f5;  
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 0xabcd;
  v42.f3 = 0x7f;
  v42.f4 = 0x1;
  v42.f5 = 0xef;
  return v42;
}

int lto_sub_12()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f2==0xabcd)
    printf("ok\n");
  else
    printf("ng\n");

  if(v57.f3==0x7f)
    printf("ok\n");
  else
    printf("ng\n");

#if defined(__GNUC__)
    if(v57.f4==0xffffffff)

#else
    if(v57.f4==0xffffffff)
#endif
      printf("ok\n");

  if(v57.f5==0xffffffef)
    printf("ok\n");
  else
    printf("ng\n");
}

