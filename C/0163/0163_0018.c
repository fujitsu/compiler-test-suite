#include <stdio.h>
double dsub()
{
  return 0.999999999999;
}

int main(void)
{
  double r8;
  r8 = dsub();
  if ((float)r8 >= 1.0f) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  r8 = dsub();
  if (r8 >= 1.0) {
    printf("ng\n");
  } else {
    printf("ok\n");
  }
}
