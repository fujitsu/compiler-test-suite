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
int main()
{
  struct ss1 v57;
  v57 = v5();

  if(v57.f4==0xffffffff)

    printf("ok\n");
  else
    printf("ng\n");
}

