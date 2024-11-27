#include <stdio.h>
#include <math.h>

#define LENGTH 	5

void func(double * restrict r, double * restrict a);

int main()
{
  double a[LENGTH], r[LENGTH];
  int i;
  unsigned char not_equal = 0;

  for (i = 0; i < LENGTH; ++i) {
    r[i] = 0.0;
    a[i] = 10.1256;
  }

  func(r, a);

  for (i = 0; i < LENGTH - 1; ++i) {
    if (r[LENGTH - 1] != r[i]) {
      not_equal = 1;
      break;
    }
  }

  if (not_equal) {
    printf("NG\n");
  }
  else {
    printf("OK\n");
  }

  return 0;
}

void func(double * restrict r, double * restrict a)
{
  int i;

  for (i = 0; i < LENGTH; ++i) {
    r[i] = log10(a[i] / 123);
  }
}
