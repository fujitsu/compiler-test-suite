#include<stdio.h>
int f()
{
  {
    register int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}
int main()
{
  extern int a;
  a = 2;
  if( a==2 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
int a;
