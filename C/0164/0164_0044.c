
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  int i4a;
  int i4b;
  int i4c;
  int i4d;
  int i4e;
} ss;

struct st init()
{
  ss.i4a = 10;
  ss.i4b = 20;
  ss.i4c = 5;
  ss.i4d = 2;
  ss.i4e = 8;
  return ss;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && pp.i4b == 20 && pp.i4c == 5 && pp.i4d == 2 && pp.i4e==8) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d %d %d \n",pp.i4a, pp.i4b, pp.i4c, pp.i4d, pp.i4e);
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



