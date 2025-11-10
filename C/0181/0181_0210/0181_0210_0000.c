#include <stdio.h>
#include <stdlib.h>

extern void *foo(void) __attribute__ ((malloc));

int main()
{
  void *ptr = foo();
  free(ptr);
  puts("OK");
  return 0;
}
