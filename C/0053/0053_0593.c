#include<stdio.h>
int main()
{
  int a=10;
  int i=0;
  {
    int a=20;
    if( a==20 )
      i = 1;
  }
  if( a==10 && i==1 )
    printf("\n");
}
