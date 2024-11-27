

#include <stdio.h>
#define n 31
int main() {
  int i;
  unsigned int u4a[n],u4b[n],u4c[n];
  for (i = 0;i < n;i++) {
    u4a[i] = 0;
    u4b[i] = 1;
    u4c[i] = 2;
  }
  for (i = 0;i < n;i++) {
    u4a[i] = u4b[i] > u4c[i] ? u4b[i] : u4c[i];
  }
  for (i = 0;i < n;i++) {
    if (u4a[i] != 2) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%ud ",u4a[i]);
  }
  OK:;
}
