#include<stdio.h>
int main()
{
  {
    extern int a;
    extern int a;
    if( a==10 )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}

int a = 10;
