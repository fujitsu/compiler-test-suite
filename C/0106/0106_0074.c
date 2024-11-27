#include <stdio.h>

inline static void foo(double *a, double *b, int len);

int main()
{
  const int len = 10000;
  double a[len], b[len];
  foo(a, b, len);
  return 0;
}

inline static void foo(double *a, double *b, int len)
{
  int i, flag = 0;

  for (i = 0; i < len; ++i) {
    a[i] = 0.0;
    b[i] = 0.0;
  }

  for (i = 0; i < len; ++i) {
    if (a[i] != b[i]) {
      flag = 1;
      printf("NG\n");
      break;
    }
  }

  if (flag == 0) { printf("OK\n"); }
}
