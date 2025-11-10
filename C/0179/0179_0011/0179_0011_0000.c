#include <stdio.h>
extern int ifgoto_const2();
extern int ifgoto_var2(int a);
extern int ifgoto_const3();
extern int ifgoto_var3(int a);

int ifgoto_const1() {
  int i = 0;
  int c = 0;

 LOOP1:
  c = c + 1;

  ++i;
  if (i < 100) {
    goto LOOP1;
  }
  
  return c;
  
}

int ifgoto_var1(int n) {
  int i = 0;
  int c = 0;

 LOOP1:
  c = c + 1;

  ++i;
  if (i < n) {
    goto LOOP1;
  }
  
  return c;
}

int main() {
  printf("%d\n", ifgoto_const1());
  printf("%d\n", ifgoto_var1(100));
  printf("%d\n", ifgoto_const2());
  printf("%d\n", ifgoto_var2(100));
  printf("%d\n", ifgoto_const3());
  printf("%d\n", ifgoto_var3(100));
}
