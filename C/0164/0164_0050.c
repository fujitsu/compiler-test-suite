
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  short i2a;
  char i1a;
  char i1b;
  char i1c;
} q;

struct st init()
{
  q.i1a = 5;
  q.i1b = 10;
  q.i1c = 15;
  q.i2a = 20;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 5 && pp.i1b == 10 && pp.i1c == 15 && pp.i2a == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d %d \n",pp.i1a, pp.i1b, pp.i1c, pp.i2a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



