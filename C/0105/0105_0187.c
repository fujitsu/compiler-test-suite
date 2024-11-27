#include <stdio.h>
#define N 64

void sub(int n, double *a) {
  int i;

  for (i=0;i<N;++i) {
    a[i] = n;
  }
}

int nn;
int main(void) {
  double a[N];

  sub(nn,a);
  puts("OK");
  return 0;
}
