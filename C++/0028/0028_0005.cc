#include <stdio.h>

int ifunc(int n) { return n; }

int main() {
  int a[20], b[20], c[20], res[20];
  int i, n;
  n = ifunc(18);
  for (i = 0; i < 20; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 3;
    if (i < n) {
      res[i] = i + 3;
    } else {
      res[i] = 0;
    }
  }

  for (i = 0; i < 18; i++) {
    a[i] = b[i] + c[i];
  }

#pragma clang loop vectorize(disable)
  for (i = 0; i < 20; i++) {
    if (a[i] != res[i]) {
      printf("ng\n");
      int j;
      for (j = 0; j < 20; j++) {
        printf("a[%d] = %d  res[%d] = %d \n", j, a[j], j, res[j]);
      }
      return 0;
    }
  }
  printf("ok\n");

  return 0;
}
