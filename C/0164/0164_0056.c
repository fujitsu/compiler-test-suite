
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  short i2a;
  int i4a;
} q;

struct st init()
{
  q.i2a = 5;
  q.i4a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && q.i2a == 5) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d \n",pp.i4a, pp.i2a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



