#include <math.h>
#include <stdio.h>

int check(float x)
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

  printf("test for signbit(float)\n");

  printf("-1.0F: ");
  value = -1.0F;
  (void)check(value);

  printf(" 1.0F: ");
  value = 1.0F;
  (void)check(value);

  return 0;
}
