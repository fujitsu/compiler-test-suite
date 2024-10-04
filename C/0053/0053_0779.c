#include<stdio.h>
int main()
{
  int func( int a );
  extern int a;
  if( a==20 && func(10) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}

int a=20;

int func( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
