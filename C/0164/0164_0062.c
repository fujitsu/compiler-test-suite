
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  long long i8a;
  long long i8b;
  long long i8c;
} ;

struct st init()
{
  struct st ss;
  ss.i8a = 10;
  ss.i8b = 20;
  ss.i8c = 5;
  return ss;
}
void  check(struct st pp) {
  if (pp.i8a == 10 && pp.i8b == 20 && pp.i8c == 5) {
    printf(" OK\n");
  } else {
    printf(" NG %Ld %Ld %Ld\n",pp.i8a, pp.i8b, pp.i8c);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



