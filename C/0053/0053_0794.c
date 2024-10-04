#include<stdio.h>
int f(a)
int a;
{
  int func( int a );
  if ( a==10 && func(20) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
int main()
{
  f(10);
}

int func( int a)
{
  if ( a == 20 )
      return 1;
    else
      return 0;
}
