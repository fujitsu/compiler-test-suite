#include<stdio.h>
int main()
{
  int a;
  int i=0;
  a=10;
  {
    extern int a;
    if( a==20 )
      i=1;
    else
      printf(" TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=20;