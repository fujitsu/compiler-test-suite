#include<stdio.h>
extern int a;
int main()
{
  char x=0;
  {
    static int a=5;
    if( a==5 )
       x=1;
  }
  if( x==1 )
    printf("\n");
}
int a;
