
#include <stdio.h>

static float rrr()
{
  return 1.0f;
}

int main(void) {
  float f1,f2;
  f1 = rrr();
  f1 = 3.0f - f1;
  f2 = f1 + f1;
  printf("%f\n",f2);
}
