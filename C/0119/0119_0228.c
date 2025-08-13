#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#ifdef v10
#define print(int) printf("int = %d\n",int)
int main()
{
      int x=1,y=1,z=1;

      x += y += z;
      print( x < y ? y : x );

      print( x < y ? x ++ : y ++ );
      print(x); print(y);

      print( z += x < y ? x ++ : y ++ );
      print(y); print(z);

      x=3; y=z=4;
      print( ( z >= y >= x) ? 1 : 0);
      print( z >= y && y >= x);
exit (0);
}
#else
#define print(int,y) if( (int) != y ) puts(" NG ");
int main()
{
      int x=1,y=1,z=1;

      x += y += z;
      print( x < y ? y : x ,3);

      print( x < y ? x ++ : y ++ ,2);
      print(x,3); print(y,3);

      print( z += x < y ? x ++ : y ++ ,4);
      print(y,4); print(z,4);

      x=3; y=z=4;
      print( ( (z >= y) >= x) ? 1 : 0,0);
      print( z >= y && y >= x,1);
      puts(" SCRPZ05 PASS ");
exit(0);
}
#endif
