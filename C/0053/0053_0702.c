#include<stdio.h>
int f()
{
  {
    int a;
    a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}
int main()
{
  int a;
  a=20;
  if( a==20 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
