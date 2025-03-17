#include <stdio.h>

void sub(int a[], int b[], int c[], int n) {
  int i;
  for (i = 0; i < n; ++i) {
    c[i] = a[i] + b[i]; 
  }
}
int main() {
  int i;
  int a[1000];
  int b[1000];
  int c[1000];
  
  for (i = 0; i < 1000; ++i) {
    a[i] = i;
    b[i] = (i + 10);
  }

  sub(a,b,c,1000);

  if (c[0] == 10 && c[9] == 28 && c[99] == 208, c[999] == 2008) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d, %d, %d, %d\n",c[0], c[9], c[99], c[999]);
  }
}
