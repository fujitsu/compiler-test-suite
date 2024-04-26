#include <math.h>
#include <float.h>
#include <stdio.h>

int check(long double x, long double y)
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
  long double x, y;

  printf("test for isunordered(long double, long double)\n");

  printf("LDBL_MIN, 1.0L:     ");
  x = LDBL_MIN;
  y = 1.0L;
  (void)check(x, y);

  printf("NAN,      1.0L:     ");
  x = (long double)NAN;
  y = 1.0L;
  (void)check(x, y);

  printf("LDBL_MIN, NAN:      ");
  x = LDBL_MIN;
  y = (long double)NAN;
  (void)check(x, y);

  printf("NAN,      NAN:      ");
  x = (long double)NAN;
  y = (long double)NAN;
  (void)check(x, y);

  printf("0.0L,     INFINITY: ");
  x = 0.0L;
  y = (long double)INFINITY;
  (void)check(x, y);

  printf("INFINITY, LDBL_MAX: ");
  x = (long double)INFINITY;
  y = LDBL_MAX;
  (void)check(x, y);

  printf("NAN,      INFINITY: ");
  x = (long double)NAN;
  y = (long double)INFINITY;
  (void)check(x, y);

  printf("INFINITY, NAN:      ");
  x = (long double)INFINITY;
  y = (long double)NAN;
  (void)check(x, y);

  return 0;
}
