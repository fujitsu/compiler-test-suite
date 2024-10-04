#include<stdio.h>
int a[2][2];
int main()
{
  char x=0;
  {
    static int a[2][2];
    a[1][1] = 5;
    if( a[1][1]==5 )
       x=1;
  }
  if( a[1][1]==0 && x==1 )
    printf("\n");
}
