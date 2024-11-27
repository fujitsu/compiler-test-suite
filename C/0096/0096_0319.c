#include <stdio.h>

int main() {
  volatile int  i,j;
  int  a[30];
  
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
