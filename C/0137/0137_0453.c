#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test2 (int k[5], int a);
int test1 (int j[5], int a);
int test (int a);

int i[5] ;
int main (void) {
  int a ;
  printf(" *** mreg0373 *** \n") ;
  i[1] = 1 ;
  i[2] = 2 ;
  a = test(1) ;
  printf(" a = %d \n",a) ;
  if ( a == 2 ) {
    printf(" *** OK *** \n") ;
  } else { 
    printf(" *** NG *** \n") ;
  }
exit (0);
}
int test (int a)
{
  test1(i,a);
  a = test2(i,a) ;
  return(a) ;
}
int test1 (int j[5], int a)
{
  return(j[1]*a) ;
}
int test2 (int k[5], int a)
{
  return(k[1]+a) ;
}
