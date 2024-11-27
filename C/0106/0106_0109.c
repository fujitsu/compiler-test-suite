#include "stdio.h"
int main() {
  int n = 0;
  int a[100];
  int i,j;

  for (i=0; i<100; i++) {
    a[i] = 1;
  }

  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      if (j%2 == 0) {
	n = n + a[i];
      }
    }
  }
  printf("%d\n",n);

  n = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      if (j%2 == 0) {
	n = n + a[1];
      }
    }
  }
  printf("%d\n",n);

  n = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      if (j%2 == 0) {
	n = n + j;
      }
    }
  }
  printf("%d\n",n);
}
