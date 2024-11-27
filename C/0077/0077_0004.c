#include <stdio.h>
static int x[2];
int main()
{
   void *p;

  p = &x[1];
  if( p == &x[1] ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
