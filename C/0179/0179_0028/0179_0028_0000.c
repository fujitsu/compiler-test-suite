#include <stdio.h>
#include "000.h"

extern struct s_type sub();

int main()
{
  struct s_type var1 = sub();
  printf("%d, %f\n", var1.i, var1.d);
  return 0;
}
