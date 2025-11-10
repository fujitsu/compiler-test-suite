#include <stdio.h>

extern int dowhile_const2();
extern int dowhile_var2(int a);
extern int dowhile_const3();
extern int dowhile_var3(int a);

int dowhile_const1() {
  int i = 0;
  int c = 0;

  do {
    c = c + 1;
    ++i;
  } while (i < 100);
  return c;
}

int dowhile_var1(int n) {
  int i = 0;
  int c = 0;

  do {
    c = c + 1;
    ++i;
  } while (i < n);

  return c;
}

int main() {
  printf("%d\n", dowhile_const1());
  printf("%d\n", dowhile_var1(100));
  printf("%d\n", dowhile_const2());
  printf("%d\n", dowhile_var2(100));
  printf("%d\n", dowhile_const3());
  printf("%d\n", dowhile_var3(100));
}
