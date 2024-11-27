

#include <stdio.h>
#define n 31
int main() {
  int i;
  long int i8a[n],i8b[n],i8c[n];
  for (i = 0;i < n;i++) {
    i8a[i] = 0;
    i8b[i] = 1;
    i8c[i] = 2;
  }
  for (i = 0;i < n;i++) {
    i8a[i] = i8b[i] > i8c[i] ? i8b[i] : i8c[i];
  }
  for (i = 0;i < n;i++) {
    if (i8a[i] != 2) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%ld ",i8a[i]);
  }
  OK:;
}
