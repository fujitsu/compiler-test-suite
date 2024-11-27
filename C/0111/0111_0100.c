#include <stdio.h>

int ifif2( n )
  int n ;
{
  int i, s=0, ar[10] ;
  for ( i=0 ; i<n ; i++ ) {
    ar[i]=0;
    if ( i > 5 ) {
      if ( i < 6 )
	ar[i]=i;
      if ( i < 4 )
	ar[i]=i; 
      if ( i <= 5 )
	ar[i]=i;
      if ( i <= 3 )
	ar[i]=i;
     if ( i == 5 )
	ar[i]=i;
     if ( i == 2 )
	ar[i]=i;
    }
    s += ar[i] ;
  }
  printf(" s = %d\n", s ) ;
}
int main()
{
  ifif2( 10 ) ;
}
