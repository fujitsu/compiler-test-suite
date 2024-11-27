#include <stdio.h>
int main(void)
{
  int i;
  float f = 0.f;
  for (i = 16777217; i < 16777222; ++i) {
    f = f + (float)i;
  }
  printf("%f\n",f);
}
