#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
   printf("*** CATEGORY ** TEST ** STARTED ***\n");
{
  printf("*** CATEGORY-01 *** O K ***\n");
}
{
   int i=1;
   struct tag {int a;int b;}st,**x;
   struct tag  *arr[2];
   struct tag  ayy[2][2];
   st.a=9;
   arr[0]=&st;
   x=i==1?arr:arr;
   if((&(**x))->a==9)
     printf("*** CATEGORY-02 *** O K ***\n");
   else
     printf("*** CATEGORY-02 ***    N G    ***\n");
}
{
  printf("*** CATEGORY-03 *** O K ***\n");
}
{
   int i=1;
   struct tag {int a;int b;}st,**x;
   struct tag  *arr[2];
   struct tag  ayy[2][2];
   st.a=9;
   arr[0]=&st;
   x=i==0?arr:arr;
   if((&(**x))->a==9)
     printf("*** CATEGORY-04 *** O K ***\n");
   else
     printf("*** CATEGORY-04 ***    N G    ***\n");
}
printf("*** CATEGORY *** TEST *** ENDED ***\n");
exit (0);
  }
