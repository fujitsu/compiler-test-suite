
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  short i2a;
  float r4a;
} q;

struct st init()
{
  q.i2a = 5;
  q.r4a = 10.5;
  return q;
}
void  check(struct st pp) {
  if (pp.r4a == 10.5 && q.i2a == 5) {
    printf(" OK\n");
  } else {
    printf(" NG %f %d \n",pp.r4a, pp.i2a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



