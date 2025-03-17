#include <stdio.h>

int *a;

int sub(int *d1, int *d2)
{
  *d1 = 1;
  *d2 = 2;
  *a = 5;

  if (*d1 == 5 && *d2 == 5) {
    return 1;
  } else {
    return 0;
  }
}

int main(void) 
{
  int x = 0;
  a = &x;
  if (sub(&x, &x)) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}

