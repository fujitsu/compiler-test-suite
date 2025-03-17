
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  float r4a;
  double r8a;
} ;

struct st init()
{
  struct st ss;
  ss.r4a = 20;
  ss.r8a = 10;
  return ss;
}
void  check(struct st pp) {
  if (pp.r8a == 10 && pp.r4a == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %f %f \n",pp.r8a, pp.r4a);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



