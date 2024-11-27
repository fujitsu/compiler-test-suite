#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main() {
float a,b ;
float sub1() ;

printf(" ***** mreg0333 ***** \n") ;

a = sub1(1.0) ;
b = sub1(a)   ;

if ( b == 4.0 ) {
   printf(" OK   \n") ;
} else {
   printf(" NG   b = %e\n",b) ;
}

exit (0);
}
float sub1(a)
float a ;
{
  return(a+a) ;
}
