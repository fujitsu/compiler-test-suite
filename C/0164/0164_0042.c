
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  int i4a;
  int i4b;
  int i4c;
} ss;

struct st init()
{
  ss.i4a = 10;
  ss.i4b = 20;
  ss.i4c = 5;
  return ss;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && pp.i4b == 20 && pp.i4c == 5) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d \n",pp.i4a, pp.i4b, pp.i4c);
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



