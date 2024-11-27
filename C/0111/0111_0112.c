#include <stdio.h>
int sub(a,b,c,d,n)
  int a,b,c,d,n;
{
  int x[10][10],y[10][10],i,j,s=0 ;
  for ( j = 0 ; j < n ; j ++ ) {
    for ( i = 0 ; i < n ; i ++ ) {
      if ( a == 0 ) c = 0 ;
      if ( b == 0 ) d = 0 ;
      x[j][i] = c + i + j ;
      y[j][i] = d + i + j ; 
      if ( a == 0 ) {
	x[j][i] = 0 ;
	y[j][i] = x[0][i] ;
      }
    }
  }
  for ( j = 0 ; j < n ; j ++ ) {
    for ( i = 0 ; i < n ; i ++ ) {
      s += x[j][i] + y[j][i] ;
    }
  }
  return ( s ) ;
}
int main()
{
  int i;
  for( i=0 ; i<10 ; i++ ) {
    printf("sub = %d\n",sub(i,10-i,i*10,10-2*i,10) );
  } 
}
