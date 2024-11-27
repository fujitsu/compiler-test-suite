#include <stdlib.h>
#include <stdio.h>

typedef union abcd {
  int i;
  int j;
} abcd;

struct efgh {
  int i;
};

double bar(int i, double j, double k) { return j*k-(double)i ; }

abcd * foo( abcd * arg1, struct efgh * arg2 )
{
 *((double *)&arg1) = bar(0x1,*((double *)&arg1[0]), *((double *)&arg1[2]));
 return &arg1[2];
}
int main()
{
    double abcdarea[3] ;
    abcd *ra ;
    double res ;
    abcdarea[0]=2.2 ;
    abcdarea[1]=8.8 ;
    abcdarea[2]=16.16 ;
    ra  = foo( (abcd*)abcdarea, 0x0 ) ;
    printf("%e\n",abcdarea[0]) ;
    exit(0);
}
