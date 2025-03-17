
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
} q;

struct st init()
{
  q.i1a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i1a == 10) {
    printf(" OK\n");
  } else {
    printf(" NG %d \n",pp.i1a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



