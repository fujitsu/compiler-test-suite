#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


int aa=3;
int a ;
int b ;
int c ;
int d;
int main() {
  a = __builtin_expect(0  ,1);
  b = __builtin_expect(1  ,0);
  c = __builtin_expect(256,1);

  printf("expect test\n");

  if (a==0) printf("ok 1\n");
  else      printf("ng 1\n");

  if (b==1) printf("ok 2\n");
  else      printf("ng 2\n");

  if (c==256) printf("ok 3\n");
  else      printf("ng 3\n");

  d = __builtin_expect(aa ,2);
  if (d==aa) printf("ok 4\n");
  else      printf("ng 4\n");

  printf("test end \n");
}
