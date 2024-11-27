#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (int x);
int test (int a, int b, int c);
int main() {
int a,b,c ;

printf(" mreg0319 \n") ;

a = test(1,2,3) ;

switch(a) {
 case 1 :
 b=2;
 sub(b) ;
 break  ;

 case 2 :
 b=3 ;
 sub(b) ;
 break  ;

 case 5 :
 c=4 ;
 sub(c) ;
 break  ;
}
exit (0);
}
int test (int a, int b, int c)
{
  a = b + c ;
  return(a) ;
}
int sub (int x)
{
 if ( x == 4 ) {
     printf(" ** OK ** \n") ;
   }
 else
   {
     printf(" ** NG ** \n") ;
   }
}
