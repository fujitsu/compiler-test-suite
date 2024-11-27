#include "stdio.h"
int main() {
  int n;
  int a[100];
  int i,j;

  for (i=0; i<10; i++) {
    a[i] = 10;
    a[i+10] = 20;
    a[i+20] = 20;
    a[i+30] = 30;
    a[i+40] = 30;
    a[i+50] = 30;
    a[i+60] = 100;
    a[i+70] = 100;
    a[i+80] = 100;
    a[i+90] = 100;
  }

  n = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j+=3) {
      if (j%2 == 0) {
	n = n + 1;
      }
    }
  }
  printf("%d\n",n);

  n = 0;
  for (i=0; i<100; i++) {
    for (j=99; j>=0; j--) {
      if (j%2 == 0) {
	n = n + 1;
      }
    }
  }
  printf("%d\n",n);

  n = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<a[i]; j++) {
      if (j%2 == 0) {
	n = n + 1;
      }
    }
  }
  printf("%d\n",n);
}
