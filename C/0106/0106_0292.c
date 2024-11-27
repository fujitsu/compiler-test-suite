#include <stdio.h>

static void sub(volatile unsigned long int *a,
		volatile unsigned long int *b,
		long int n);

int main() {
  volatile unsigned long int a[1000], b[1000];
  long int i;
  for (i=0; i<1000; i++) {
    b[i] = i;
  }
  sub(a,b,1000);
  if (a[100] == b[100]+b[101]) {
    printf("OK\n");
  } else {
    printf("NG a[100]=%d\n",a[100]);
  }
  return 1;
}

static void sub(volatile unsigned long int *a,
		volatile unsigned long int *b,
		long int n) {
  long int i;
  for (i=0; i<n-1; i++) {
    a[i] = b[i]+b[i+1];
  }
}
