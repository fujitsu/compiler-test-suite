#include <math.h>
#include <stdio.h>

int check(double x)
{
  int result = signbit(x);

  if (result) {
    printf("negative value\n");
  } else {
    printf("positive value\n");
  }
  return result;
}

int main(void)
{
  float value;

  printf("test for signbit(double)\n");

  printf("-1.0:  ");
  value = -1.0;
  (void)check(value);

  printf(" 1.0:  ");
  value = 1.0;
  (void)check(value);

  return 0;
}
