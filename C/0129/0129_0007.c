#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub(void *p, void *q);
int main( ) {
  long double r16a = 5.01;
  long double r16b;
  static long double a = 10.0,b = 0.1;
  r16b = r16a * 2.01;
  if (r16b > 9.91 && r16b<10.11) printf("OK- 1\n");
  else printf("NG- 1\n");

  sub(&a,&b);
  if (a == 10.0) printf("OK- 2\n");
  else           printf("NG- 2\n");
  if (b == 0.1)  printf("OK- 3\n");
  else           printf("NG- 3\n");
exit (0);
}

int sub(p,q)
void *p,*q;
{
}
