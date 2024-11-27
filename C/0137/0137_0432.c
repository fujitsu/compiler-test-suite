#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int cond1, int cond2, int cond3, int a, int b, int c);
int main() {
int a,b,c ;
printf(" ***** mreg0400 ***** \n") ;

a = test(1,1,0,1,2,3) ;
if( a == 0 )  
	printf(" path 1 1-2-4-8-10 ** OK ** a = %d \n",a) ;
else
	printf(" path 1 1-2-4-8-10 ** NG ** a = %d \n",a) ;

a = test(1,0,0,1,2,3) ;
if( a == 0 )  
	printf(" path 2 1-2-5-8-10 ** OK ** a = %d \n",a) ;
else
	printf(" path 2 1-2-5-8-10 ** NG ** a = %d \n",a) ;
 
a = test(0,0,1,1,2,3) ;
if( a == 0 )  
	printf(" path 3 1-3-6-9-10 ** OK ** a = %d \n",a) ;
else
	printf(" path 3 1-3-6-9-10 ** NG ** a = %d \n",a) ;
 
a = test(0,0,0,1,2,3) ;
if( a == 0 )  
	printf(" path 4 1-3-7-9-10 ** OK ** a = %d \n",a) ;
else
	printf(" path 4 1-3-7-9-10 ** NG ** a = %d \n",a) ;

exit (0);
}
int test (int cond1, int cond2, int cond3, int a, int b, int c)
{
  int d,e,f ;

  a = a + 1 ; 
  b = b + 2 ;
  c = c + 3 ;
  d = a + b ;
  e = d + c ;
  f = e + a ;

  printf(" 1 ") ;
  if ( cond1 ) {
	printf(" 2 ") ;
	if ( cond2 ) {
	  printf(" 4 ") ;
	}
	else 
	{
	  printf(" 5 ") ;
	}
	printf(" 8 ") ;
  }
  else
  {
	printf(" 3 ") ;
	if ( cond3 ) {
	  printf(" 6 ") ;
	}
	else
	{
	  printf(" 7 ") ;
	}
	printf(" 9 ") ;
  }
  printf(" 10\n") ;

  return(a+b+c+d+e+f) ;
}
