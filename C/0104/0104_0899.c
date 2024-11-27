#include <stdio.h>
#include <math.h>

#define N 100
double a[N];

void foo1(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 1.0;
  }
}
void foo2(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 1.0;
  }
}
void foo3(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 1.0;
  }
}
void foo4(int m) {
  int i;
  for (i=0; i<m; ++i) {
    a[i] = 1.0;
  }
}

double suma(int m) {
  int i;
  double s;
  s = 0.0;
  for (i=0; i<m; ++i) {
    s += a[i];
  }
  return s;
}

#define ANS  (double)100.0

int main(void) {
  double s;
  foo1(N);
  foo2(N);
  foo3(N);
  foo4(N);
  s = suma(N);
  if (s == ANS) {
    printf("ok\n");
  } else {
    printf("ng: %lf != %lf\n", s, ANS);
  }
}
