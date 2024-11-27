#include <stdio.h>

int main()
{
  const int len = 10000;
  int i;
  double a[len], b[len];

  for (i = 0; i < len; ++i) {
    a[i] = 1.0;
    b[i] = a[i] + 2.0;
  }
  
  for (i = 0; i < len; ++i) {
    if ((a[i] + 2.0) != b[i]) {
      printf("NG\n");
      return 0;
    }
  }
  
  printf("OK\n");
  return 0;
}
