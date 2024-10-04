#include<stdio.h>
int main()
{
  {
    int a=10;
    int f( int a );
    if( f(a) )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}

int f( int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}
