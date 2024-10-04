#include<stdio.h>
int f()
{
  {
    extern int a;
    if( a==20 )
        return 1;
      else
        return 0;
  }
}

extern int a=20;
int main()
{
  if( a==20 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
