#include <math.h>
#include <stdio.h>

int check(float x)
{
  int result = isnormal(x);

  if (result) {
    printf("isnormal(x)\n");
  } else {
    printf("not isnormal(x)\n");
  }
  return result;
}

int main(void)
{
  float value;

  printf("test for isnormal(float)\n");

  printf("NAN:       ");
  value = NAN;
  (void)check(value);

  printf("INFINITY:  ");
  value = INFINITY;
  (void)check(value);

  printf("ZERO:      ");
  value = 0.0F;
  (void)check(value);

  printf("SUBNORMAL: ");
  /* #define FLT_MIN          1.17549435e-38F */
  value = 1.17549435e-39F;
  (void)check(value);

  printf("NORMAL:    ");
  value = 1.0F;
  (void)check(value);

  return 0;
}
