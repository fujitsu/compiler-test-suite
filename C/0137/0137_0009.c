#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  static int a[5]={1,2,3,4,5} ;
  static int b[5]={1,2,3,4,5} ;
  static int dummy1[1000]={1} ;
  static int c[5]={1,2,3,4,5} ;
  static int d[5]={1,2,3,4,5} ;

  static int p[5]={1,2,3,4,5} ;
  static int q[5]={1,2,3,4,5} ;
  static int dummy2[1000]={1} ;
  static int r[5]={1,2,3,4,5} ;
  static int s[5]={1,2,3,4,5} ;
  int i ;
  printf("*** addrs5 begin *** \n") ; 
  for (i=1; i<=5; i++ ) 
    { 
      a[i-1]=1 ; b[i-1]=2; c[i-1]=3 ; d[i-1]=4; 
      p[i-1]=5 ; q[i-1]=6; r[i-1]=7 ; s[i-1]=8; 
    }
  for (i=0; i<=4; i++ ) 
    { 
      if( c[i]==3 &&
          a[i]==1 &&
          b[i]==2 &&
          d[i]==4    ) printf("*** addrs0(1) ok *** \n") ; 
      else             printf("*** addrs0(1) ng *** \n") ;                 
    }
  for (i=-1; i<=3; i++ ) 
    { 
      if( s[i+1]==8 &&
          r[i+1]==7 &&          
          q[i+1]==6 &&
          p[i+1]==5    ) printf("*** addrd0(2) ok *** \n") ; 
      else               printf("*** addrs0(2) ng *** \n") ;                 
    }
  printf("*** addrs5 end   *** \n") ;
exit (0);
}
