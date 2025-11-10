#include <stdio.h>
static int a[10] = {1,2,3,4,5,6,7,8,9,10};

static
int foo(int bar) {return 1;}
static
int bar(int foo) {return 0;}

int lto_sub_20()
{
  int check = -1;

  if (foo(a[8])) {
    check = a[0];
  } else if (bar(a[9])) {
    check = a[1];
  }

  if (check > 0) {
    printf("OK - Make sure with the assembly file.\n");
  } else {
    printf("NG - Register branch test.\n");
  }
}
