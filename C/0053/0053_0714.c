#include<stdio.h>
int f()
{
  {
    static int a;
    if( a==0 )
        return 1;
      else
        return 0;
  }
}

int a=20;
int main()
{
  if( a==20 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
