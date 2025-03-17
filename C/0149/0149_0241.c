#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static int yes=1;
  static int no=0;
int main()
  {
 
   printf("*** CATEGORY ** TEST ** STARTED ***\n");
{
   int i=0;
   i=i+1;
   if(i)
     printf("*** CATEGORY-01 *** O K ***\n");
   else
     printf("*** CATEGORY-01 ***    N G    ***\n");
 
}
{
   int i=9,iii=0;
   i=1<iii;
   if(iii==no)
     printf("*** CATEGORY-02 *** O K ***\n");
   else
     printf("*** CATEGORY-02 ***    N G    ***\n");
 
}
{
   int i=0,iii=0;
   iii=i<=iii;
   if(iii)
     printf("*** CATEGORY-03 *** O K ***\n");
   else
     printf("*** CATEGORY-03 ***   N G   ***\n");
}
{
   int i=9,iii=0;
   iii=1>i;
   if(iii==no)
     printf("*** CATEGORY-04 *** O K ***\n");
   else
     printf("*** CATEGORY-04 ***   N G   ***\n");
}
{
   int i=9,iii=0;
   iii=8>=i;
   if(iii==no)
     printf("*** CATEGORY-05 *** O K ***\n");
   else
     printf("*** CATEGORY-05 ***   N G   ***\n");
}
 
{
  int i=9,iii=0;
  iii=8==i;
  if(iii==no)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N G   ***\n");
}
{
  int i=9,iii=0;
  iii= 0!=i;
  if(iii)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N G   ***\n");
}
{
  int i=0,bi=2;
  bi=1&&i;
  if(bi==no)
    printf("*** CATEGORY-08 *** O K ***\n");
  else
    printf("*** CATEGORY-08 ***   N G   ***\n");
}
{
  int i=0,ai=1,bi=2;
  i=ai||2;
  if(i)
    printf("*** CATEGORY-09 *** O K ***\n");
  else
    printf("*** CATEGORY-09 ***   N G   ***\n");
}
{
  int i=0,ai=2;
  i=ai/ai;
  if(i)
    printf("*** CATEGORY-10 *** O K ***\n");
  else
    printf("*** CATEGORY-10 ***   N   G   ***\n");
}
{
  int i=0,ai=4;
  i=7%ai;
  if(i==3)
    printf("*** CATEGORY-11 *** O K ***\n");
  else
    printf("*** CATEGORY-11 ***   N   G   ***\n");
}
{
  int i=0,ai=1;
  i=1<<ai;
  if(i==2)
    printf("*** CATEGORY-12 *** O K ***\n");
  else
    printf("*** CATEGORY-12 ***   N   G   ***\n");
}
printf("*** M3RTRE05 *** TEST *** ENDED ***\n");
exit (0);
  }
