

#include <stdio.h>
#define n 31
int main() {
  int i4a[n],i4b[n],i4c[n],i;
  for (i = 0;i < n;i++) {
    i4a[i] = 0;
    i4b[i] = 1;
    i4c[i] = 2;
  }
  for (i = 0;i < n;i++) {
    i4a[i] = i4b[i] > i4c[i] ? i4b[i] : i4c[i];
  }
  for (i = 0;i < n;i++) {
    if (i4a[i] != 2) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%d ",i4a[i]);
  }
  OK:;
}
