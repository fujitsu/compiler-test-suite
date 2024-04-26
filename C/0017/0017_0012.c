#include <math.h>
#include <stdio.h>

int check(float x)
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
  float value;

  printf("test for fpclassify(float)\n");

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
