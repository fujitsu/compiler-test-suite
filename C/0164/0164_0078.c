
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  double r8a;
} ;

struct st init()
{
  struct st ss;
  ss.r8a = 10.5;
  return ss;
}
void  check(struct st pp) {
  if (pp.r8a == 10.5) {
    printf(" OK\n");
  } else {
    printf(" NG %f \n",pp.r8a);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



