#include <stdio.h>
extern int pragma_const2();
extern int pragma_var2(int a);

int pragma_const1() {
  int i;
  int c = 0;
  for (i = 0; i < 100; ++i) {
    c = c + 1;
  }
  return c;
}

int pragma_var1(int n) {
  int i;
  int c = 0;
  for (i = 0; i < n; ++i) {
    c = c + 1;
  }
  return c;
}

int main() {
  printf("%d\n", pragma_const1());
  printf("%d\n", pragma_var1(100));
  printf("%d\n", pragma_const2());
  printf("%d\n", pragma_var2(100));
}
