#include <stdio.h>
extern int b();

int i;

void a()
{
  i = b();
  printf("a(): i = %d\n", i);
}
