
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  double r8a;
} ss;

struct st init()
{
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
  ss = init();
  check(ss);
  return 0;
}



