#include<stdio.h>
int a=20;
int f();
int main()
{
  extern int a;
  extern int a;
  if( f() && a==30 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int f()
{
  a += 10;
  if( a==30 )
   return 1;
  else
   return 0;
}
