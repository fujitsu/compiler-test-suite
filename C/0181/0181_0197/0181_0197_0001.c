#include <stdlib.h>

__attribute__ ((alloc_size(1, 2)))
void *my_calloc(int x, int y)
{
  return calloc(x, y);
}

__attribute__ ((alloc_size(2)))
void *my_malloc(int x, int y)
{
  return malloc(x * y);
}
