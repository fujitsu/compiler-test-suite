#include<stdio.h>
int f()
{
  int func( register int a );
  if( func(10) )
      return 1;
    else
      return 0;
}

extern int a;
int main()
{
  if( a==0 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}

int func( register int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
int a=0;
