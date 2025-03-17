
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  long long i8a;
  char i1b;
} ss;

void  check(struct st pp) {
  if (pp.i1a == 1 && pp.i1b == 2 && pp.i8a == 3) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %Ld \n",pp.i1a, pp.i1b, pp.i8a);
  }
}

struct st init()
{
  ss.i1a = 1;
  ss.i1b = 2;
  ss.i8a = 3;
  return ss;
}

int main()
{
  struct st xx;
  ss = init();
  check(ss);  
  return 0;
}



