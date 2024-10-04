#include<stdio.h>
int x=10;
extern int *a;
int f();
int main()
{
  extern int *a;
  a = &x;
  if( f() )
    printf("\n");
}
int f()
{
  if( *a==10 )
   return 1;
  else
   return 0;
}
int *a;
