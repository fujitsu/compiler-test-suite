#include <stdio.h>

int main()
{
  int i,a=0,e;

  for( i=0;i<100;i++ ){
    if( i == 1 )
      a = 10;
    if( i > 1 )
      a = 1;

    if( a == 10 )
      e = 1;
    else if( a == 1 )
      e = 2;
  }
  printf("e = %d\n",e);
}
