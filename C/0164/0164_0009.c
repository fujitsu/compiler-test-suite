
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
} ;

struct st init()
{
  struct st  qq;
  qq.i1a = 10;
  return qq;
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
  struct st  q;
  q = init();
  check(q);
  return 0;
}



