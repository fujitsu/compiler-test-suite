#include <stdio.h>


static int x;
static int *px = &x;

 int y;
 int *py = &y;
int main()
{
  static int z;
  static int *pz = &z;

   x = 1;
   printf("%d,",*px);

   y = 2;
   printf("%d,",*py);

   z = 3;
   printf("%d\n",*pz);
}

