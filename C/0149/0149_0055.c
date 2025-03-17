#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
   printf("*** CATEGORY ** TEST ** STARTED ***\n");
{
   void *v;
   void *v2;
   int i=0,*x,a=2,b=3;
   v2=&b;
   v=&a;
   x=i==1?v:v2;
   if(*x==3)
     printf("*** CATEGORY-01 *** O K ***\n");
   else
     printf("*** CATEGORY-01 ***    N G    ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
