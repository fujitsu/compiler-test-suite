
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  long long i8a;
  long long i8b;
} ;

struct st init()
{
  struct st ss;
  ss.i8a = 10;
  ss.i8b = 20;
  return ss;
}
void  check(struct st pp) {
  if (pp.i8a == 10 && pp.i8b == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %Ld %Ld \n",pp.i8a, pp.i8b);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



