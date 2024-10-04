#include<stdio.h>
int f(a)
int a;
{
  int b;
  {
    int a=20;
    b=( a==20 );
  }
  if (a == 10 && b )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
int main()
{
  f(10);
}
