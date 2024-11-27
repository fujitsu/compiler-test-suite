#include "stdio.h"
int main() {
  int n = 0;
  double a[1000];
  double b[1000];
  int i,j;

  for (i=0; i<1000; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
  }

  for (i=0; i<100; i++) {
    for (j=0; j<10; j++) {
      if (j%2 == 0) {
	n = n + 1;
	a[n] = b[j];
      }
    }
  }
  printf("%d\n",n);
  printf("%g\n",a[10]);

  n = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      if (j%2 == 0) {
	n = n + 1;
      } else {
	n = n + 2;
      }
    }
  }
  printf("%d\n",n);

  n = 1;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      if (j%2 == 0) {
	n = 100 - n;
      }
    }
  }
  printf("%d\n",n);
}
