#include<stdio.h>
int main()
{
  int a=10;
  int i=0;
  {
    register int a;
    a =1 ;
    if( a==1 )
      i = 1;
  }
  if( a==10 && i==1 )
    printf("\n");
}
