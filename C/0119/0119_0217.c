#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int swap(unsigned short int a, unsigned short int b);
#define  mask1   0x0000
#define  mask2   0x0001
struct t1{
     unsigned short int as:2;
     unsigned short int bs:14;
} *p,x;
int main()
{
    p     = &x;
    p->as = 0x0001;
    p->bs = 0x0002;
    swap(p->as,p->bs);
    if( p->as == mask1)
           printf(" test ==> ng\n");
    else
           printf(" test ==> ok\n");
exit (0);
}
int swap(a,b)
unsigned short int a,b;
{
      return 0;
}
