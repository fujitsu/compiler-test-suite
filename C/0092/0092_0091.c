#include <stdio.h>
int sub(int x);
int test(int a, int b, int c);
int main() {
int a,b,c ;

printf("  \n") ;

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
}
int test(a,b,c)
int a,b,c ;
{
  a = b + c ;
  return(a) ;
}
int sub(x)
int x ;
{
 if ( x == 4 ) {
     printf(" ** OK ** \n") ;
   }
 else
   {
     printf(" ** NG ** \n") ;
   }
}
