#include <math.h>
#include <stdio.h>

int check(long double x)
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

  printf("test for signbit(long double)\n");

  printf("-1.0L: ");
  value = -1.0L;
  (void)check(value);

  printf(" 1.0L: ");
  value = 1.0L;
  (void)check(value);

  return 0;
}
