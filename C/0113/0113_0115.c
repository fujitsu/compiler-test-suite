#include <stdio.h>

void sub(unsigned char a, int x)
{
  int t = (int)a;

  if (t == 0 || t == 1 || t == 2 || t == 3) {
    x+=2;
  } else {
    x+=3;
  }
  printf("%d\n", x);
}

int main(void) 
{
  sub(-1, -1);
  sub( 0, -1);
  sub( 1, -1);
  sub( 2, -1);
  sub( 3, -1);
}
