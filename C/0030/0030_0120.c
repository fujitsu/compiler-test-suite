#include <stdio.h>
struct AAA {
  long A;
  double B;
};
union BBB {
  long A;
  double B;
};
int main()
{
  _Bool a = 1;

  int         b =1;
  long        c =1;
  long long   d =1;
  float       e =1;
  double      f =1;
  long double g =1;
  char        h =1;
  short       i =1;
  unsigned    j =1;
  signed      k =1;
  struct AAA  l ;
  union BBB   m ; 
  _Bool           n = 1;
  _Complex        o = 1;
  _Complex float  p = 1;
  _Complex double q = 1;

  l.A = 1;
  m.A = 1;

  a = b + a;
  a = c + a;
  a = d + a;
  a = e + a;
  a = f + a;
  a = g + a;
  a = h + a;
  a = i + a;
  a = j + a;
  a = k + a;
  a = l.A + a;
  a = m.A + a;
  a = o + a;
  a = p + a;
  a = q + a;

  printf(" %d  \n",a);
}

