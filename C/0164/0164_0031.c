
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  short i2a;
} ;

struct st init()
{
  struct st q;
  q.i2a = 10;
  return q;
}
void  check(struct st pp) {
  if (pp.i2a == 10) {
    printf(" OK\n");
  } else {
    printf(" NG %d \n",pp.i2a);
  }
}

int main()
{
  struct st q;
  q = init();
  check(q);
  return 0;
}



