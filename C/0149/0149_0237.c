#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static int yes=1;
  static int no=0;
int main()
  {
 
   printf("*** CATEGORY ** TEST ** STARTED ***\n");
{
 
   1;
   if(1)
     printf("*** CATEGORY-01 *** O K ***\n");
   else
     printf("*** CATEGORY-01 ***    N G    ***\n");
}
{
   int i=9,iii;
   iii=i<1;
   i=iii<1;
   iii=i<1;
   if(iii==0)
     printf("*** CATEGORY-02 *** O K ***\n");
   else
     printf("*** CATEGORY-02 ***    N G    ***\n");
 
}
{
   int i=9,iii;
   iii=i<=9;
   i=iii<=2;
   iii=i<=0;
   if(iii==0)
     printf("*** CATEGORY-03 *** O K ***\n");
   else
     printf("*** CATEGORY-03 ***   N G   ***\n");
}
{
   int i=9,iii;
   iii=i>1;
   i=iii>1;
   iii=i>1;
   if(iii==0)
     printf("*** CATEGORY-04 *** O K ***\n");
   else
     printf("*** CATEGORY-04 ***   N G   ***\n");
}
{
   int i=9,iii;
   iii=i>=9;
   i=iii>=0;
   iii=i>=2;
   if(iii==0)
     printf("*** CATEGORY-05 *** O K ***\n");
   else
     printf("*** CATEGORY-05 ***   N G   ***\n");
}
 
{
  int i=9,iii=0;
  iii=i==10;
  i=iii==0;
  iii=i==0;
  if(iii==0)
    printf("*** CATEGORY-06 *** O K ***\n");
  else
    printf("*** CATEGORY-06 ***   N G   ***\n");
}
{
  int i=9,iii=0;
  iii= i!=0;
  i= iii!=2;
  iii= i!=1;
  if(iii==0)
    printf("*** CATEGORY-07 *** O K ***\n");
  else
    printf("*** CATEGORY-07 ***   N G   ***\n");
}
{
  int i=0,ai=1,bi=2;
  i=ai&&1;
  bi=i&&1;
  if(bi==1)
    printf("*** CATEGORY-08 *** O K ***\n");
  else
    printf("*** CATEGORY-08 ***   N G   ***\n");
}
{
  int i=0,ai=1,bi=2;
  bi=i||0;
  ai=bi||1;
  i=ai||2;
  if(i==1)
    printf("*** CATEGORY-09 *** O K ***\n");
  else
    printf("*** CATEGORY-09 ***   N G   ***\n");
}
{
  int i=1,ai=2;
  i=ai/2;
  if(i==1)
    printf("*** CATEGORY-10 *** O K ***\n");
  else
    printf("*** CATEGORY-10 ***   N   G   ***\n");
}
{
  int i=0,ai=7;
  i=ai%4;
  if(i==3)
    printf("*** CATEGORY-11 *** O K ***\n");
  else
    printf("*** CATEGORY-11 ***   N   G   ***\n");
}
{
  int i=0,ai=1;
  i=ai<<1;
  if(i==2)
    printf("*** CATEGORY-12 *** O K ***\n");
  else
    printf("*** CATEGORY-12 ***   N   G   ***\n");
}
printf("*** M3RTRE01 *** TEST *** ENDED ***\n");
exit (0);
  }
