#include<stdio.h>
extern int a[3];
extern int a[3]={1,2,3};
int f();
int main()
{
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
