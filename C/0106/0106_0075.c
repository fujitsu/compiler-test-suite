#include <stdio.h>

void foo(int len);

int main()
{
  const int len = 10000;
  foo(len);
  return 0;
}

void foo(const int len)
{
  int i, flag = 0;
  double a[len], b[len];

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
