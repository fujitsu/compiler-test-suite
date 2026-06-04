#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

static int a=__builtin_constant_p(3);
static int b=__builtin_constant_p(sizeof(int));
static int c=__builtin_constant_p(b);
int main() {
  printf("Const test \n");
  if (a==1) printf("ok 1\n");
  else      printf("ng 1\n");
  if (b==1) printf("ok 2\n");
  else      printf("ng 2\n");
  if (c==0) printf("ok 3\n");
  else      printf("ng 3\n");
  printf("test end\n");
}
