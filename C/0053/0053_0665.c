#include<stdio.h>
int f()
{
  register int a;
  a = 20;
  if( a==20 )
   return 1;
  else
   return 0;
}

extern int a;
int main()
{
  if( f() && a==10 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=10;
