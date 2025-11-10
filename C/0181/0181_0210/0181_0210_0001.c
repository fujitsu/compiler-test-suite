#include <stdlib.h>

__attribute__ ((malloc))
void *foo()
{
  return malloc(4);
}
