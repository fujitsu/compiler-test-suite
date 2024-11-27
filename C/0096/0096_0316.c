#include <stdio.h>

void sub (int a[]) {
  volatile int i,j,k;
  
  for (i=1; i<98; ++i) {
    k = i;
    j = k + 1;
    k = j;
    if (k < 50) {
      a[i] = a[k] + a[k]; 
    } else {
      a[i] = a[k]; 
    }
  }
  
  if (a[10] == 22 && a[60] == 61) {
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
