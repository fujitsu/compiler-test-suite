#include<stdio.h>
int a;
extern int a=10;
int main()
{
  if( a==10 )
    printf("\n");
}
