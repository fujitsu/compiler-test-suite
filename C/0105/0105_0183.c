#include <stdio.h>
#define N 64

void sub(int n, double *a) {
  int i;

  for (i=0;i<N;++i) {
    a[i] = n;
  }
}
int main(void) {
  double a[N];

  sub(1,a);
  puts("OK");
  return 0;
}
