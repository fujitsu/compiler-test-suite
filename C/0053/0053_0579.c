#include<stdio.h>
extern int a;
int main()
{
  int a=3;
  char x=0;
  {
    int a;
    a = 5;
    if( a==5 )
     x=1;
  }
  if( a==3 && x==1 )
    printf("\n");
}
