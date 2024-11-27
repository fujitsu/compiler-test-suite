#include <stdio.h>

int main()
{
  int a=0,b=0,bb=0,c;
  
  for( c=0;c<=100000;c++ ){
    
    if( c > 0 )
      a = 1;

    switch( a ){
    case 0:
      b++;
      break;
    case 1:
      bb++;
      break;
    }
  }
  printf("b=%d\n",b);
  printf("bb=%d\n",bb);
}
