#include <stdio.h>

void sub(unsigned char a, int x)
{
  switch(a) {
  case 0:
  case 1:
  case 2:
    x += 2;
    break;
  default:
    x += 3;
    break;
  }
  printf("%d\n", x);
}

int main(void) 
{
  sub(-1, -1);
  sub( 0, -1);
  sub( 1, -1);
  sub( 2,  1);
  sub( 3, -1);
}
