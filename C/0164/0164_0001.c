
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  _Complex long double c32a;
} ss;

struct st init()
{
  ss.c32a = 5.0+8.0I;
  return ss;
}
void  check(struct st pp) {
  if (creall(pp.c32a) == 5.0 && cimagl(pp.c32a) == 8.0) {
    printf(" OK\n");
  } else {
    printf(" NG %Lf %Lf\n",creall(pp.c32a), cimagl(pp.c32a));
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



