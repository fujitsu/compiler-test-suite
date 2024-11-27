#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#ifdef v10
#define printx printf("%d\n",x)
int main()
{
      int x=2,y,z;
      x=2;
      x *= 3 + 2; printx;
      x *= y = z = 4; printx;
      x = y == z; printx;
      x == ( y = z ); printx;
exit (0);
}
#else
#define printx(y) if( x!=y ) puts(" NG ");
int main()
{
      int x=2,y,z;
      x=2;
      x *= 3 + 2;     printx(10);
      x *= y = z = 4; printx(40);
      x = y == z;     printx(1);
      x == ( y = z ); printx(1);
      puts(" SCRPZ02 PASS ");
exit(0);
}
#endif
