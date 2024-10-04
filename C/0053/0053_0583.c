#include<stdio.h>
extern int a;
int main()
{
  static int a=20;
  if( a==20 )
   printf("\n");
}
