
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  int i4a;
} q;

struct st init()
{
  q.i4a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i4a == 10) {
    printf(" OK\n");
  } else {
    printf(" NG %d \n",pp.i4a);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



