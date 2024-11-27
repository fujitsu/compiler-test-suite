#include <stdio.h>

int main() {
  int  i,j;
  volatile int  a[30];
  
  j = 0;
  for (i=0; i<30; ++i) {
    a[j] = i;
    ++j;
  }
  
  if (a[10] == 10) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
