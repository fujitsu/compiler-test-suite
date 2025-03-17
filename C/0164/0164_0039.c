
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  short i2a;
  char i1a;
  char i1b;
} q;

struct st init()
{
  q.i1a = 10;
  q.i1b = 20;
  q.i2a = 30;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 10 && pp.i1b == 20 && pp.i2a == 30) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d \n",pp.i1a, pp.i1b,pp.i2a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



