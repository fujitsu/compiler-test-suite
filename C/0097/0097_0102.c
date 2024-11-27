#include <stdio.h>

int main()
{
  static int a[5],b[5],dummy1[1000],c[5],d[5] ;
  static int p[5],q[5],dummy2[1000],r[5],s[5] ;
  int i ;
  printf("***  begin *** \n") ; 
  for (i=1; i<=5; i++ ) 
    { 
      a[i-1]=1 ; b[i-1]=2; c[i-1]=3 ; d[i-1]=4; 
      p[i-1]=5 ; q[i-1]=6; r[i-1]=7 ; s[i-1]=8; 
    }
  for (i=-1; i<=3; i++ ) 
    { 
      if( c[i+1]==3 &&
          a[i+1]==1 &&
          b[i+1]==2 &&
          d[i+1]==4    ) printf("***  ok *** \n") ; 
      else               printf("***  ng *** \n") ;                 
    }
  for (i=-2; i<=2; i++ ) 
    { 
      if( s[i+2]==8 &&
          r[i+2]==7 &&          
          q[i+2]==6 &&
          p[i+2]==5    ) printf("***  ok *** \n") ; 
      else              printf("***  ng *** \n") ;                 
    }
  printf("***  end   *** \n") ;
}

