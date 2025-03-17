
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char  i1a;
  short i2a;
} q;

struct st init()
{
  q.i2a = 10;
  q.i1a = 20;
  return q;
}
void  check(struct st pp) {
  if (pp.i2a == 10 && pp.i1a == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d \n",pp.i2a, pp.i1a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



