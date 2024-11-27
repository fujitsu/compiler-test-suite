#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#ifdef v10
int main()
{
      int x;

      x = -3 + 4 * 5 - 6; printf("%d\n",x);
      x = 3 + 4 % 5 - 6;  printf("%d\n",x);
      x = -3 * 4 % - 6 /5;printf("%d\n",x);
      x = ( 7 + 6 ) % 5 /2; printf("%d\n",x);
exit (0);
}
#else
int main()
{
      int x;

      x = -3 + 4 * 5 - 6;   if( x != 11 ) puts(" NG ");
      x = 3 + 4 % 5 - 6;    if( x != 1 ) puts(" NG ");
      x = -3 * 4 % - 6 /5;  if( x != 0 ) puts(" NG ");
      x = ( 7 + 6 ) % 5 /2; if( x != 1 ) puts(" NG ");
      puts(" SCRPZ01 PASS ");
exit(0);
}
#endif
