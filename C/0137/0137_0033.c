#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int h(char        a[10],
      short int   b[10],
      int         c[10],
      float       d[10],
      double      e[10],
      long double f[10])
{
  if( a[0]==1   &&
      b[0]==1   &&
      c[0]==1   &&
      d[0]==1.0 &&
      e[0]==1.0 &&
      f[0]==1.0    )  printf("*** ok *** \n");
  else                printf("*** ng *** \n");
  return 0;
}

int g(char        a[10],
      short int   b[10],
      int         c[10],
      float       d[10],
      double      e[10],
      long double f[10])
{ 
  a[0]=1  ;
  b[0]=1  ;
  c[0]=1  ;
  d[0]=1.0;
  e[0]=1.0;
  f[0]=1.0;
  h(a,b,c,d,e,f) ;
  return 0;
}

int main()
{
  char        a[10];
  short int   b[10];
  int         c[10];
  float       d[10];
  double      e[10];
  long double f[10];

  printf("*** dalign test start ***\n");
  g(a,b,c,d,e,f) ;
  printf("*** dalign test end   ***\n");
exit (0);
}
