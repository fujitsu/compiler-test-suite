#include <stdio.h>

int main()
{
  int a=0,c,b0=0,b1=0,b2=0,b3=0;
  
  for( c=0;c<=100;c++ ){
    
    if( c == 1 )
      a = 1;
    else if( c == 2 )
      a = 1;
    else if( c == 3 )
      a = 2;
    else if( c == 4 )
      a = 2;
    else if( c == 5 )
      a = 2;
    else if( c > 5 )
      a = 3;
    
    switch( a ){
    case 0:
      b0++;
      break;
    case 1:
      b1++;
      break;
    case 2:
      b2++;
      break;
    case 3:
      b3++;
      break;
    }
  }
  printf("b0=%d\n",b0);
  printf("b1=%d\n",b1);
  printf("b2=%d\n",b2);
  printf("b3=%d\n",b3);
}
