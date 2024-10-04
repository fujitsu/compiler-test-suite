#include<stdio.h>
int main()
{
  extern int a;
  int i=0;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf(" TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf(" TEST OK \n");
  else
    printf(" TEST NG = %d \n",a);
}
int a=10;
