#include <stdio.h>

struct test{
  float a;
  double c[99];
}b;
union {
  double a[100];
  struct test b;
}un;

void sub2(double *e) {
  int i=0;

  for (i=0;i<99;++i) {
    un.a[i] = i;
  }
  for (i=0;i<99;++i) {
    un.b.c[i] = e[i];
  }

}

int main(void) {
  double a[1024]={0};
  sub2(a);
  puts("OK");
  return 0;
}
