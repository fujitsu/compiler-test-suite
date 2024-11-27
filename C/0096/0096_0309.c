#include <stdio.h>

void sub (int a[]) {
  int i,j, k;
  
  for (i=1; i<98; ++i) {
    k = i;
    j = k + 1;
    if (j < 50) {
      a[j] = a[j] + a[j]; 
    } else {
      a[j] = a[j]; 
    }
  }
  
  if (a[10] == 20 && a[60] == 60) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

int main() {
  int  i,a[100];
  
  for (i=0; i<100; ++i) {
    a[i] = i;
  }

  sub(a);
}
