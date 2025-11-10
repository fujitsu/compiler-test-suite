#include <stdio.h>
extern void aa(float);

float f;

void b(int i)
{
  printf("b() : i = %d\n", i);
  f = i + 5.5;
  printf("b() : f = %f\n", f);
  aa(f);
}
