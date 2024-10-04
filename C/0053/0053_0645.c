#include<stdio.h>
int f()
{
  static int a;
  a=10;
  if( a==10 )
   return 1;
  else
   return 0;
}

static int a=20;
int main()
{
  if( a==20 && f() )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
