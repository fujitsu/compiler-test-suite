
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char  i4a;
  char  i4b;
  char  i4c;
  char  i4d;
} q;

struct st init()
{
  q.i4a = 10;
  q.i4b = 20;
  q.i4c = 30;
  q.i4d = 40;
  return q;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && pp.i4b == 20 && pp.i4c == 30 && pp.i4d == 40) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d %d \n",pp.i4a, pp.i4b, pp.i4c, pp.i4d);
  }
}

int main()
{
  q = init();
  check(q);
  return 0;
}



