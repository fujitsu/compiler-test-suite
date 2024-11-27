#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int g(int p);
static	int	b ;
int g(int p);
int f();
int main()
{
  b=0 ;
  f() ;
exit (0);
}
int f()
{
  int	a=0 ;
  if (b) {
    b++ ;
  }
 label:
  if (g(a++)) {
    return 0;
  }
  b++ ;
  goto label ;
}
int g(int p)
{
  if (b) {
    if (p>0) {
      printf("*** OK ***\n") ;
    } else {
      printf("*** NG ***\n") ;
    }
    exit(0) ;
  }
  return 0;
}
