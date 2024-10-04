#include<stdio.h>
int main()
{
  int a;
  a=10;
  {
    extern int a;
    if( a==20 )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
  }
}
int a=20;
