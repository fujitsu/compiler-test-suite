#include <stdio.h>
struct ss1 {
  signed int f2 : 27;
  unsigned short f3; 
};

static struct ss1 v5()
{
  struct ss1 v42;
  v42.f2 = 61779774;
  return v42;
}

static struct ss1 (*v6) () = v5;
int main()
{
  struct ss1 v57;
  int i;
  v57 = (*v6) ();
  if(v57.f2==61779774)
    printf("ok\n");
  else
    printf("ng\n");
}
