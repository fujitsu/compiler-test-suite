#include <stdio.h>

void sub()
{
  int *a = new int[5] {1, 2, 3, 4, 5};

  for (int i = 0; i < 5; ++i) {
    if (a[i] != (i + 1)) {
      puts("NG");
      delete [] a;
      return;
    }
  }

  puts("OK");
  delete [] a;
}
