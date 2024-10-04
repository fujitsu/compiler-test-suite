#include <stdio.h>
typedef int a[];
int main()
{
   int *p;
   int i;
   p = (a){1,2,3};
   for (i = 0; i < 3 ; i++)
     printf("%d\n", *p++);
   p = (a){1,2,3,4};
  
   for (i = 0; i < 4 ; i++)
     printf("%d\n", *p++);

   printf("%d\n", sizeof((a){1,2,3}));
   printf("%d\n", sizeof((a){1,2,3,4}));
}
