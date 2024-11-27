#include <stdio.h>
void bar() {}
void foo(double *a) {
  int i;
  for (i=0;i<1024;++i) {
    a[i]=0;
  }
  bar();
}

int main(void) {
  double a[1024];
  foo(a);
  puts("OK");
  return 0;
}
