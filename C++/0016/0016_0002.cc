#include <stdio.h>
#include <limits.h>
enum E { e1=INT_MAX, e2 };
int main()
{
  if ( e1 == INT_MAX && e2 == INT_MAX+1LL)
    printf("ok\n");
  else
    printf("ng\n");
}
