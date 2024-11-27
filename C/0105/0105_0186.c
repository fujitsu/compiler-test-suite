#include <stdio.h>
#define N 64
int n;
void sub(double *a) {
  int i;

  for (i=0;i<N;++i) {
    a[i] = n;
  }
}
int main(void) {
  double a[N];

  sub(a);
  puts("OK");
  return 0;
}
