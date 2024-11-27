#include <stdio.h>

int main()
{
  const int len = 10000;
  int i;
  double a[len], b[len];
  
  a[0] = b[0] = 0.0;
  for (i = 0; i < len - 1; ++i) {
    a[i + 1] = 0.0;
    b[i + 1] = 0.0;
  }

  for (i = 0; i < len; ++i) {
    if (a[i] != b[i]) {
      printf("NG\n");
      return 0;
    }
  }

  printf("OK\n");

  return 0;
}
