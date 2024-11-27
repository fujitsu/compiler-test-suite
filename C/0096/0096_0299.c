#include <stdio.h>

int main() {
  int  i;
  int  j = 0;
  int k = 0;
  volatile int  a[100];
  
  for (i=-1; i<98; ++i) {
    k = i;
    j = k + 1;
    a[j] = i;
  }
  
  if (a[10] == 9) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",a[10]);
  }
}
