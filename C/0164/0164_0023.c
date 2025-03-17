
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  char i1b;
} ;

struct st init()
{
  struct st q;
  q.i1a = 10;
  q.i1b = 20;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 10 && pp.i1b == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d \n",pp.i1a, pp.i1b);
  }
}

int main()
{
  struct st q;
  q = init();
  check(q);
  return 0;
}



