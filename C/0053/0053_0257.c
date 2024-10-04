#include <stdio.h>
int main()
  {
   printf("*** \n");
{
   int i=1;
   struct tag {
                int a;
                int b;
           }st,arr[2],(*p)[2],ayy[2][2],**x;
            p=&arr;
            ayy[0][0].a=3;
   x=(struct tag **)(i==0?p:ayy);
   if((int)x[0]==3)
     printf("*** \n");
   else
     printf("*** \n",x[0]);
}
{
int i=0,**x;
   static int arr[2][2]={9,8,7,6};
   static int ayy[2]={1,2},(*p)[2];
     p=&ayy;
   x=(int **)(i==0?arr:p);
   if((int)x[0]==9)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1;
   struct tag {
                int a;
                int b;
           }st, arr[2],(*p)[2],ayy[2][2],**x;
           p=&arr;
           ayy[0][0].a=3;
   x=(struct tag **)(i==1?ayy:p);
   if((int)x[0]==3)
     printf("*** \n");
   else
     printf("*** \n");
}
printf("*** \n");
  }
