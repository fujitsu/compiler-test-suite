#include <math.h>
#include <stdio.h>

int check(double x)
{
  int result = fpclassify(x);

  switch (result) {
  case FP_NAN:
    printf("fpclassify(x)==FP_NAN\n");
    break;
  case FP_INFINITE:
    printf("fpclassify(x)==FP_INFINITE\n");
    break;
  case FP_ZERO:
    printf("fpclassify(x)==FP_ZERO\n");
    break;
  case FP_SUBNORMAL:
    printf("fpclassify(x)==FP_SUBNORMAL\n");
    break;
  case FP_NORMAL:
    printf("fpclassify(x)==FP_NORMAL\n");
    break;
  default:
    printf("fpclassify(x) is other\n");
    break;
  }
  return result;
}

int main(void)
{
  double value;

  printf("test for fpclassify(double)\n");

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
