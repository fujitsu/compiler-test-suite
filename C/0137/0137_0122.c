#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int ifif1( n )
  int n  ;
{
  int i, s=0, ar[10] ;
  for ( i=0 ; i<n ; i++ ) {
    ar[i]=0;
    if ( i > 5 ) {
      if ( i > 5 )
	ar[i]=i;
      if ( i >= 6 )
	ar[i]=i;
      if ( i != 5 )
	ar[i]=i;
      if ( i != 3 )
	ar[i]=i;
    }
    s += ar[i] ;
  }
  printf(" s = %d\n", s ) ;
}
int main()
{
  int i;
  ifif1( 10 );
exit (0);
}
