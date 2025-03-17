
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  float r4a;
  char i1b;
} q;

struct st init()
{
  q.i1a = 5;
  q.i1b = 20;
  q.r4a = 10.5;
  return q;
}
void  check(struct st pp) {
  if (pp.r4a == 10.5 && q.i1a == 5 && q.i1b == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %f %d %d \n",pp.r4a, pp.i1a, pp.i1b);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



