
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

struct st {
  char i1a;
  char i1b;
  char i1c;
  char i1d;
  char i1e;
  char i1f;
  char i1g;
  char i1h;
  char i1i;
  char i1j;
  char i1k;
  char i1l;
  char i1m;
  char i1n;
  char i1o;
} ;

struct st init()
{
  struct st ss;
  ss.i1a = 1;
  ss.i1b = 2;
  ss.i1c = 3;
  ss.i1d = 4;
  ss.i1e = 5;
  ss.i1f = 6;
  ss.i1g = 7;
  ss.i1h = 8;
  ss.i1i = 9;
  ss.i1j = 10;
  ss.i1k = 11;
  ss.i1l = 12;
  ss.i1m = 13;
  ss.i1n = 14;
  ss.i1o = 15;
  return ss;
}
void  check(struct st pp) {
  if (pp.i1a == 1 && pp.i1b == 2 && pp.i1c == 3 &&
      pp.i1d == 4 && pp.i1e == 5 && pp.i1f == 6 &&
      pp.i1g == 7 && pp.i1h == 8 && pp.i1i == 9 &&
      pp.i1j ==10 && pp.i1k ==11 && pp.i1l ==12 &&
      pp.i1m ==13 && pp.i1n ==14 && pp.i1o ==15 ) {
    printf(" OK\n");
  } else {
    printf(" NG %d %d %d %d %d \n",pp.i1a, pp.i1b, pp.i1c, pp.i1d, pp.i1e);
    printf(" NG %d %d %d %d %d \n",pp.i1f, pp.i1g, pp.i1h, pp.i1i, pp.i1j);
    printf(" NG %d %d %d %d %d \n",pp.i1k, pp.i1l, pp.i1m, pp.i1n, pp.i1o);
  }
}

int main()
{
  struct st xx;
  xx = init();

  check(xx);  

  return 0;
}



