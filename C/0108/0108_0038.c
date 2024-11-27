#include <stdio.h>
#define N  1024
double a[N];
void sub1(double *a) {
  int i;
  for(i=0;i<N;++i) {
    a[i] = a[i]*a[i] + a[i];
  }
}

void caller(void) {
  sub1(a);
}

int main(void) {
  puts("OK");
  return 0;
}
