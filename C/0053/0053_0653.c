#include<stdio.h>
int f()
{
  extern int a;
  a=10;
  if( a==10 )
   return 1;
  else
   return 0;
}

int a;
int main()
{
  if( f() && a==10 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
