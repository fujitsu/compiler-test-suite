#include<stdio.h>
int main()
{
  extern int a;
  {
    extern int a;
    a += 10;
  }
  if( a==20 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=10;
