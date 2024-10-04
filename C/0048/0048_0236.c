#include <stdio.h>
int main()
{
  int a=1,b=1;
  int x=1,y;
  if (a)
    ;
  else                   
    x=2;
    ++x;
  if (x==2)
    printf(" OK\n");
  else
    printf(" NG\n");
}
