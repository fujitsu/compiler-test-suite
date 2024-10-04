#include<stdio.h>
int f()
{
  extern int a;
  if( a==20 ) {
   a += 10;
   return 1; }
  else
   return 0;
}

extern int a=20;
int main()
{
  if( f() && a==30 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
