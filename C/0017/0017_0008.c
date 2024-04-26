#include <math.h>
#include <stdio.h>

int check(double x)
{
  int result = isnan(x);

  if (result) {
    printf("isnan(x)\n");
  } else {
    printf("not isnan(x)\n");
  }
  return result;
}

int main(void)
{
  double value;

  printf("test for isnan(double)\n");

  printf("NAN:       ");
  value = (double)NAN;
  (void)check(value);

  printf("INFINITY:  ");
  value = (double)INFINITY;
  (void)check(value);

  printf("ZERO:      ");
  value = 0.0;
  (void)check(value);

  printf("SUBNORMAL: ");
  /* #define DBL_MIN          2.2250738585072014e-308 */
  value = 2.2250738585072014e-309;
  (void)check(value);

  printf("NORMAL:    ");
  value = 1.0;
  (void)check(value);

  return 0;
}
