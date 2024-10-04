#include <stdio.h>
int main()
{
  int a=3,b=3,c=1,d=1;
  int x=0;
  while (a||b)
  {
    while (c>0)
    {
      while (d>0)
      {
        --d;
        ++x;
      }
      --c;
      d=1;
    }
    c=1;
    --a;--b;
  }
  if (x==3)
    printf ("OK\n");
  else
    printf ("NG\n");
}
