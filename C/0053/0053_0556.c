#include<stdio.h>
int a[3];
int f();
int main()
{
  extern int a[3];
  a[2]=10;
  if( f() )
    printf("\n");
}
int f()
{
   if( a[2]==10 )
    return 1;
   else
    return 0;
}
