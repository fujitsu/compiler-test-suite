#include <stdio.h>

static void sub(int a,int b);
static void pri(int a) {printf("%d\n",(a));}
int main()
{
  int a,b,res;

  a = b = 2;
  sub(a,b);
}

static void sub( int a,int b)
{
  int t;
  switch(b) {
  case 1:
    if (a)
      t = 12;
    else
      t = -9;
    break;
  case 2:
    if (a*a)
      t = 2;
    else
      t = 10;
    break;
  case 3:
    if (a*a*a)
      t = 1;
    else
      t = 11;
    break;
  }
  if (t)
    pri(t);
}
