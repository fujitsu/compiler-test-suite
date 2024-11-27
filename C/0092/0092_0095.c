#include <stdio.h>

int main() {
float a,b ;
float sub1() ;

printf(" *****  ***** \n") ;

a = sub1(1.0) ;
b = sub1(a)   ;

if ( b == 4.0 ) {
   printf(" OK   \n") ;
} else {
   printf(" NG   b = %e\n",b) ;
}

}
float sub1(a)
float a ;
{
  return(a+a) ;
}
