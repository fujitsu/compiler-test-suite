#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a;
 
int f1( int a );
int main()
{
  int f2( int a );
  int x=20;
  int y=30;
  if( f1(x) && f2(y) && a==0 )
   printf("CATEGORY TEST OK \n");
  else
   printf("CATEGORY TEST NG \n");
exit (0);
}
int f1( int a )
{
  if( a==20 )
   return 1;
  else
   return 0;
}
int f2( int a )
{
  if( a==30 )
   return 1;
  else
   return 0;
}
