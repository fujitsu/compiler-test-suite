
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  short i2a;
  short i2b;
} q;

struct st init()
{
  q.i1a = 5;
  q.i2a = 10;
  q.i2b = 20;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 5 && pp.i2a == 10 && pp.i2b == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d \n",pp.i1a, pp.i2a, pp.i2b);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



