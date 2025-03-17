
#include <stdio.h>

int foo(int i);


int foo(int i) {
  switch( i ) {
  case 1:
    return 0;
  case 2:
    return 1;
  case 3:
    return 2;
  case 4:
    return 3;
  case 5:
    return 4;
  case 6:
    return 5;
  case 7:
    return 6;
  case 8:
    return 7;
  case 9:
    return 8;
  }
  return -1;
}


int main()
{
  int i,x;
  for(i=0;i<10;i++) {
    x = foo(i);
    if( i >= 1 && i <= 9 ) {
      if( x != (i-1) ) puts("NG 1");
    }
    else {
      if( x != (-1) ) puts("NG 2");
    }
  }

  puts("PASS");
}

