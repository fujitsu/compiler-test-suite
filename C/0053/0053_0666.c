#include<stdio.h>
int main()
{
  register int a;
  a=0;
  {
    extern int a;
    a += 10;
  }
  if( a==0 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=10;
