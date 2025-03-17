
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  int i4a;
  char i1b;
} q;

struct st init()
{
  q.i1a = 5;
  q.i1b = 20;
  q.i4a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && q.i1a == 5 && q.i1b == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d \n",pp.i4a, pp.i1a, pp.i1b);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



