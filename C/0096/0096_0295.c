#include <stdio.h>

int main() {
  volatile int  i;
  int  a[30];
  
  for (i=0; i<30; i=i+3) {
    a[i] = i;
    a[i+1] = i + 10;
    a[i+2] = i + 20;
  }
  
  if (a[10] == 19) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
