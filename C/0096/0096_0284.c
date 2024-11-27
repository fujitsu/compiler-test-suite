#include <stdio.h>

int main()
{
  int a,c;
  
  for( c=0;c<=100000;c++ ){
    
    if( c == 0 ) a = 0;
    if( c > 1 )  a = 1;
    if( c < 0 )  a = -1;

    switch(a){

    case 0:
      a = 10;
      break;
    case -1:
      a = 11;
      break;
    case 1:
      a = 12;
      break;
    default:
      a = 13;
      break;
    }
  }
  printf("a = %d\n",a);
}
