
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  long long i8a;
} ;

struct st init()
{
  struct st ss;
  ss.i8a = 10;
  return ss;
}
void  check(struct st pp) {
  if (pp.i8a == 10) {
    printf(" OK\n");
  } else {
    printf(" NG %Ld \n",pp.i8a);
  }
}

int main()
{
  struct st ss;
  ss = init();
  check(ss);
  return 0;
}



