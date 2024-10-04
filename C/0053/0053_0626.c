#include<stdio.h>
int main()
{
  int a;
  int i=0;
  a=10;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("\n",a);
  }
  if( a==10 && i==1 )
    printf("\n");
}
