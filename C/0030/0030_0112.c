#include <stdio.h>
typedef int a[];
int main()
{
   int *p;
   int *q;
   p = (a){1,2,3};
   q = (a){1,2,3,4};
   for (int i = 0; i < 3 ; i++)
   printf("%d\n", *p++);
   for (int i = 0; i < 4 ; i++)
   printf("%d\n", *q++);
}
