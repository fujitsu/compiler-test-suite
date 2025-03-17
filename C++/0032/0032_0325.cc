#include <stdio.h>
int main()
{
  int a=0;
  int j=a++;
  if (a)
    printf("ok\n");
  else
    printf("ng\n");
}
