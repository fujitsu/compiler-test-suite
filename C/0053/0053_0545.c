#include<stdio.h>
int a;
int f();
int main()
{
  int a=3;
  char x=0;
  {
    int a=5;
    if( a==5 )
       x=1;
  }
  if( a==3 && x==1 && f() )
    printf("\n");
}
int f()
{
  if( a==0 )
   return 1;
  else
   return 0;
}
