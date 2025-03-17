
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  int i4a;
  char i1a;
} q;

struct st init()
{
  q.i1a = 20;
  q.i4a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && q.i1a == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d \n",pp.i4a, pp.i1a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



