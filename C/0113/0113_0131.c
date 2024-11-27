#include <stdio.h>

void sub(unsigned char a, int x)
{
  switch(a) {
  case -2:
  case -1:
    x += 2;
    
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
    x += 3;
    break;
  default:
    x += 4;
    break;
  }
  printf("%d\n", x);
}

int main(void) 
{
  sub(-3, -1);
  sub(-2, -1);
  sub(-1, -1);
  sub( 0, -1);
  sub( 1, -1);
  sub( 2, -1);
  sub( 3, -1);
  sub( 4, -1);
  sub( 5, -1);
}
