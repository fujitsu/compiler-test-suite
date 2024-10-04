#include<stdio.h>
int f()
{
  extern int a;
  a += 10;
  if( a==30 )
   return 1;
  else
   return 0;
}

extern int a;
int main()
{
  int  c;
  a += 10;
  if(c=f() && a==30 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=10;
