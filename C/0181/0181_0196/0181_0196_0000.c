#include <stdio.h>

void *my_memalign(int) __attribute__ ((alloc_align(1)));

int main()
{
  void *ptr = my_memalign(1);
  puts("OK");
  return 0;
}
