
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  double r8a;
  double r8b;
  double r8c;
  double r8d;
} ;

struct st init()
{
  struct st ss;
  ss.r8a = 10.5;
  ss.r8b = 20.2;
  ss.r8c = 8.5;
  ss.r8d = 2.0;
  return ss;
}
void  check(struct st pp) {
  if (pp.r8a == 10.5 && pp.r8b == 20.2 && pp.r8c == 8.5 && pp.r8d == 2.0) {
    printf(" OK\n");
  } else {
    printf(" NG %f %f %f %f \n",pp.r8a,pp.r8b, pp.r8c, pp.r8d);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



