#include <stdio.h>
#define N  1024
double a01[N];

void sub(double *a,int i) {
  a[i] = a[i]*a[i] + a[i];
}
void sub2(double *a) {
  int i;
  for(i=0;i<8;++i) {
    sub(a,i);
  }
}

void caller(void) {
  sub2(a01);
}

void caller2(void) {
  int i;

  for(i=0;i<N;++i) {
    caller();
  }
}

int main(void) {
  puts("OK");
  return 0;
}
