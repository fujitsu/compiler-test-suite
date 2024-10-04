#include<stdio.h>
static int a=10;
static int a;
int main()
{
  if( a==10 )
   printf(" TEST OK \n");
  else
   printf(" TEST NG = %d \n",a);
}
