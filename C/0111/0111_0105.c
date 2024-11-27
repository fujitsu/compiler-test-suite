#include <stdio.h>
void sub1(a)
int a;
{
  int y;
  y=0;
  if(a)
    y=2;
  printf("y=%d\n",y);
}

void sub2(a)
int a;
{
  int y;
  if(a)
    y=2;
  else
    y=0;
  printf("y=%d\n",y);
}
int main()
{
  sub1(1);
  sub2(2);
}
