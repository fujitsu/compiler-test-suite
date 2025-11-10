#include <stdio.h>
#include "000.h"

struct s_type var2;

struct s_type sub()
{
  var2.i = 10;
  var2.d = 123.456;
  printf("%d, %f\n", var2.i, var2.d);
  return var2;
}
