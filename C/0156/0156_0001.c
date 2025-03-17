#include <stdio.h>

float *a;

int sub(int *d1, int *d2)
{
  *d1 = 1;
  *d2 = 2;
  *a = 5.f;

  if (*d1 != 1 && *d2 != 2) {
    return 1;
  } else {
    return 0;
  }
}

int main(void) 
{
  int x = 0;
  a = (float *)&x;
  if (sub(&x, &x)) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}

