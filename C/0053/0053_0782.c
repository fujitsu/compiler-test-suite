#include<stdio.h>
int main()
{
  int func( int a );
  register int a;
  a=20;
  if( a==20 && func(10) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}

int func( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
