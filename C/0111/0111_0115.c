#include <stdio.h>
int main()
{
  int i, s=0, ar[10];
  i=0;
  while( i<10 ) {
    ar[i] = i ;
    if ( i >= 10 ) ar[i-10]=i ;
    if ( i >  10 ) ar[i-10]=i ;
    if ( i >  11 ) ar[i-11]=i ;
    if ( i >= 11 ) ar[i-11]=i ;
    if ( i <   0 ) ar[0-i]=-i ;
    if ( i <= -1 ) ar[0-i]=-i ;
    i++;
  }    
  for( i=0;i<10;i++)
    s += ar[i] ;
  printf("s=%d\n",s);
}
