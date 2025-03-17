
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  int i4a;
  int i4b;
  char i1a;
} ss;

struct st init()
{
  ss.i1a = 5;
  ss.i4a = 10;
  ss.i4b = 12;
  return ss;
}
void  check(struct st pp) {
  if (pp.i4a == 10 && pp.i1a==5 && pp.i4b==12) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d \n",pp.i4a, pp.i4b, pp.i1a);
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



