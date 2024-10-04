#include <stdio.h>
typedef int a[];

a x = {1,2,3};
a y = {1,2,3,4};
int main()
{
   int *p;
   int *q;
   int i;
   p = x;
   q = y;
   for (i = 0; i < 3 ; i++)
   printf("%d\n", *p++);
   for (i = 0; i < 4 ; i++)
   printf("%d\n", *q++);
}
