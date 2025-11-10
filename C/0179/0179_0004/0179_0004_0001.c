#include <stdio.h>
extern void b();

void a(int i)
{
  printf("a() : i = %d\n", i);
  b(i);
}

void aa(float f)
{
  printf("aa() : f = %f \n", f);
}
