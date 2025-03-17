
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  long long i8a;
} ss;

struct st init()
{
  ss.i1a = 5;
  ss.i8a = 10;
  return ss;
}
void  check(struct st pp) {
  if (pp.i8a == 10 && pp.i1a==5) {
    printf(" OK\n");
  } else {
    printf(" NG %Ld %d \n",pp.i8a, pp.i8a);
  }
}

int main()
{
  ss = init();
  check(ss);
  return 0;
}



