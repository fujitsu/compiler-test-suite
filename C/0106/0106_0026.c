#include <stdio.h>

float ans;
void line(int a)
{
  ans = a;
}

void foo(int n, float *a) {
  int i;
  for (i = 0; i < n-1; ++i) {
    a[i] = 0.0;
  }
  a[i] = 0.0;
}

void bar(int n, float *b) {
  int i;
  for (i = 0; i < n; ++i) {
    b[i] = 0.1;
    line(i);
  }
}
  
int main() {
  float a[100];
  float b[100];

  foo(100, a);
  bar(100, b);

  printf("%f, %f\n", a[99], b[99]);
  return 0;
}
