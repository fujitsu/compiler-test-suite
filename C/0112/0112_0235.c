

#include <stdio.h>
#define n 31
int main() {
  int i;
  unsigned long int u8a[n],u8b[n],u8c[n];
  for (i = 0;i < n;i++) {
    u8a[i] = 0;
    u8b[i] = 1;
    u8c[i] = 2;
  }
  for (i = 0;i < n;i++) {
    u8a[i] = u8b[i] < u8c[i] ? u8b[i] : u8c[i];
  }
  for (i = 0;i < n;i++) {
    if (u8a[i] != 1) {
      goto NG;
    }
  }
  printf("OK\n");
  goto OK;
  NG: printf("NG\n");
  for (i = 0;i < n;i++) {
    printf("%ld ",u8a[i]);
  }
  OK:;
}
