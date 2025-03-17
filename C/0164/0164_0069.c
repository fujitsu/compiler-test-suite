
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  float r4a;
} q;

struct st init()
{
  q.r4a = 10.5;
  return q;
}
void  check(struct st pp) {
  if (pp.r4a == 10.5) {
    printf(" OK\n");
  } else {
    printf(" NG %e \n",pp.r4a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



