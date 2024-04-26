#include <math.h>
#include <float.h>
#include <stdio.h>

int check(double x, double y)
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
  double x, y;

  printf("test for isunordered(double, double)\n");

  printf("DBL_MIN,  1.0:      ");
  x = DBL_MIN;
  y = 1.0;
  (void)check(x, y);

  printf("NAN,      1.0:      ");
  x = (double)NAN;
  y = 1.0;
  (void)check(x, y);

  printf("DBL_MIN,  NAN:      ");
  x = DBL_MIN;
  y = (double)NAN;
  (void)check(x, y);

  printf("NAN,      NAN:      ");
  x = (double)NAN;
  y = (double)NAN;
  (void)check(x, y);

  printf("0.0,      INFINITY: ");
  x = 0.0;
  y = (double)INFINITY;
  (void)check(x, y);

  printf("INFINITY, DBL_MAX:  ");
  x = (double)INFINITY;
  y = DBL_MAX;
  (void)check(x, y);

  printf("NAN,      INFINITY: ");
  x = (double)NAN;
  y = (double)INFINITY;
  (void)check(x, y);

  printf("INFINITY, NAN:      ");
  x = (double)INFINITY;
  y = (double)NAN;
  (void)check(x, y);

  return 0;
}
