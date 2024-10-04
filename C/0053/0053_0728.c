#include<stdio.h>
int f()
{
  {
    extern int a;
    if( a==0 )
        return 1;
      else
        return 0;
  }
}

int a;
int main()
{
  if( a==0 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
