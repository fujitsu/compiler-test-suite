#include<stdio.h>
int main()
{
  int a=10;
  {
    extern int a;
    if( a==20 )
      printf("\n");
  }
}
int a=20;
