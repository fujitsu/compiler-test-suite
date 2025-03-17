
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char  i1a;
  char  i1b;
  char  i1c;
} q;

struct st init()
{
  q.i1a = 10;
  q.i1b = 20;
  q.i1c = 30;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 10 && pp.i1b == 20 && pp.i1c == 30) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d \n",pp.i1a, pp.i1b, pp.i1c);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



