#include <stdio.h>
int sub(int a,int b,int c,int d,int n);
int main()
{
  int a,b,c,d,result;
  a = 2;
  b = 10-a;
  c = 10*a;
  d = 10-2*a;
  result = sub(a,b,c,d,10);
  if( result == 125 )
    printf("P080502 : OK \n");
  else
    printf("P080502 : NG \n");
}

int sub(a,b,c,d,n)
  int a,b,c,d,n;
{
  int x,i ;
  for ( i = 0 ; i < n ; i ++ ) {
    if ( a == 0 ) 
       d = 0 ;
    if ( b == 0 ) 
       c = 0 ;
    x = c+ d+ i + i*10 ;
  }
  return x ;
}
