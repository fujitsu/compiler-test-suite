#include<stdio.h>
int main()
{
  int a=10;
  int i=0;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("\n",a);
  }
  if( a==10 && i==1 )
    printf("\n");
}
