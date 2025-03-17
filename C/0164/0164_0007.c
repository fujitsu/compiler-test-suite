
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  long long i8a;
  int i4a;
} ;

struct st init()
{
  struct st ss;
  ss.i4a = 20;
  ss.i8a = 10;
  return ss;
}
void  check(struct st pp) {
  if (pp.i8a == 10 && pp.i4a == 20) {
    printf(" OK\n");
  } else {
    printf(" NG %Ld %d \n",pp.i8a, pp.i4a);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



