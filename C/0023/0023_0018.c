#include <stdio.h>

#define X2FFFD  0x0002fffd
#define X27FFD  0x00027ffd

static void sub();
int main()
{
  unsigned short int a, b, c;
  unsigned long int ans;

  b = 0x8000;
  sub(&a,&c);

  ans = X2FFFD - a - b - c;

  if (ans == X27FFD)
    printf("OK\n");
  else
    printf("NG\n");
}

static void sub(a,b)
  unsigned short int *a,*b;
{
  *a = 0;
  *b = 0;
}
