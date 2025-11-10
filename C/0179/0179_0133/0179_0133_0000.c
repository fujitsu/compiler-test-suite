#include <stdio.h>
extern int while_const2();
extern int while_var2(int a);
extern int while_const3();
extern int while_var3(int a);

int while_const1() {
  int i=0;
  int c=0;

  while (i < 100) {
    c = c + 1;
    ++i;
  }
  return c;
}

int while_var1(int a) {
  int i=0;
  int c=0;

  while (i < a) {
    c = c + 1;
    ++i;
  }
  return c;
}

int main() {
  printf("%d\n", while_const1());
  printf("%d\n", while_var1(100));
  printf("%d\n", while_const2());
  printf("%d\n", while_var2(100));
  printf("%d\n", while_const3());
  printf("%d\n", while_var3(100));
}

