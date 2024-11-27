#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub(unsigned short int *s, unsigned short int *t);
unsigned short int a,b,c,d,e;
int main()
{
unsigned short int a,b,c,d,e;
    b = 5;
    c = 2;
    sub(&b,&c);
    a = b + c;
    d = a + c;
    sub(&a,&c);
    e = a +c ;
    if( e == 12)
          printf(" TEST ==> OK \n");
    else
          printf(" TEST ==> NG \n");
exit (0);
 }

int sub(s,t)
unsigned short int *s,*t;
{
      unsigned short int w;

      w = *s;
      *s = *t;
      *t = w;
}
