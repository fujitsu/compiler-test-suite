#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main() {
long a,b,c=0,d,e,f,g;
long f1() ;
void v1() ;

printf(" ***** mreg0334 ***** \n") ;

a = 1 ;
b = f1(a) ;
v1(c) ;
c = f1(2) ;
a = b + c ;

if ( a == 6 ) {
   printf(" OK   \n") ;
} else {
   printf(" NG   a = %e\n",a) ;
}

exit (0);
}
long f1(i1)
long i1 ;
{
  return(i1+i1) ;
}
void v1(i1)
long i1 ;
{
  return ;
}
