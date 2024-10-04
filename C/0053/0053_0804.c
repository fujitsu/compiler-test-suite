#include<stdio.h>
int f(a)
register int a;
{
  if( a == 10 )
      return 1;
    else
      return 0;
}

extern int a=20;
int main()
{
  if( a==20 && f(10) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
