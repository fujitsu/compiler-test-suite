#include <stdio.h>
extern int for_const2();
extern int for_var2(int a);
extern int for_const3();
extern int for_var3(int a);


int for_const1() {
  int i,c=0;

  for (i = 0; i < 100; ++i) {
    c = c + 1;
  }
  return c;
}

int for_var1(int n) {
  int i,c=0;

  for (i = 0; i < n; ++i) {
    c = c + 1;
  }
  return c;
}

int main() {
  printf("%d\n", for_const1());
  printf("%d\n", for_var1(100));
  printf("%d\n", for_const2());
  printf("%d\n", for_var2(100));
  printf("%d\n", for_const3());
  printf("%d\n", for_var3(100));
}
