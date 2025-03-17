
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  double r8a;
  double r8b;
} ;

struct st init()
{
  struct st ss;
  ss.r8a = 10.5;
  ss.r8b = 20.2;
  return ss;
}
void  check(struct st pp) {
  if (pp.r8a == 10.5 && pp.r8b == 20.2) {
    printf(" OK\n");
  } else {
    printf(" NG %f %f \n",pp.r8a,pp.r8b);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



