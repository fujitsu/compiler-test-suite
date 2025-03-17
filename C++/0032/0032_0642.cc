
















#include <stdio.h>

int max (int a, int b){ return (a<b) ? b : a; }
int main()
{
  int a=1, b=a+1;

  if ( max(a,b) == b )
    printf("ok\n");
  else
    printf("ng\n");

}
