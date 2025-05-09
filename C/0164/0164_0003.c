
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  _Complex long double c32a;
  _Complex long double c32b;
  _Complex long double c32c;
} ss;

struct st init()
{
  ss.c32a = 5.0+8.0I;
  ss.c32b = 2.0+3.0I;
  ss.c32c = 4.0+1.0I;
  return ss;
}
void  check(struct st pp) {
  if (creall(pp.c32a) == 5.0 && cimagl(pp.c32a) == 8.0 &&
      creall(pp.c32b) == 2.0 && cimagl(pp.c32b) == 3.0 &&
      creall(pp.c32c) == 4.0 && cimagl(pp.c32c) == 1.0
      ) {
    printf(" OK\n");
  } else {
    printf(" NG %Lf %Lf\n",creall(pp.c32a), cimagl(pp.c32a));
    printf(" NG %Lf %Lf\n",creall(pp.c32b), cimagl(pp.c32b));
    printf(" NG %Lf %Lf\n",creall(pp.c32c), cimagl(pp.c32c));
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



