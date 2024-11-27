#include <stdio.h>
int main()
{
  int i, s=0, ar[10];
  for( i=0;i<10;i++)
    ar[i] = 0 ;
  for( i=7 ; !(i>=8) ; i++ ) {
    ar[i] = i ;
    if ( i >= 8 ) ar[i-10]=i ;
    if ( i >  8 ) ar[i-10]=i ;
    if ( i >  9 ) ar[i-11]=i ;
    if ( i >= 9 ) ar[i-11]=i ;
    if ( i <  0 ) ar[0-i]=-i ;
    if ( i <= -1 ) ar[0-i]=-i ;
  }    
  for( i=0;i<10;i++)
    s += ar[i] ;
  printf("s=%d\n",s);
}
