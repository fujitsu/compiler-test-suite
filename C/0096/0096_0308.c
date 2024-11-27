#include <stdio.h>

void sub (volatile int a[]) {
  int i;
  
  for (i=1; i<99; ++i) {
    if (i < 50) {
      a[i] = a[i-1] + a[i+1]; 
    } else {
      a[i] = a[i-1]; 
    }
  }
  
  if (a[10] == 65 && a[60] == 1274) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d,%d\n",a[10],a[60]);
  }
}

int main() {
  int  i,a[100];
  
  for (i=0; i<100; ++i) {
    a[i] = i;
  }

  sub(a);
}
