#include <math.h>
#include <float.h>
#include <stdio.h>

int check(float x, float y)
{
  int result = isunordered(x, y);

  if (result) {
    printf("unordered\n");
  } else {
    printf("ordered\n");
  }
  return result;
}

int main(void)
{
  float x, y;

  printf("test for isunordered(float, float)\n");

  printf("FLT_MIN,  1.0F:     ");
  x = FLT_MIN;
  y = 1.0F;
  (void)check(x, y);

  printf("NAN,      1.0F:     ");
  x = NAN;
  y = 1.0F;
  (void)check(x, y);

  printf("FLT_MIN,  NAN:      ");
  x = FLT_MIN;
  y = NAN;
  (void)check(x, y);

  printf("NAN,      NAN:      ");
  x = NAN;
  y = NAN;
  (void)check(x, y);

  printf("0.0F,     INFINITY: ");
  x = 0.0F;
  y = INFINITY;
  (void)check(x, y);

  printf("INFINITY, FLT_MAX:  ");
  x = INFINITY;
  y = FLT_MAX;
  (void)check(x, y);

  printf("NAN,      INFINITY: ");
  x = NAN;
  y = INFINITY;
  (void)check(x, y);

  printf("INFINITY, NAN:      ");
  x = INFINITY;
  y = NAN;
  (void)check(x, y);

  return 0;
}
