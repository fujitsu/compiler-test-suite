#include <stdio.h>
int main()
  {
   printf("*** \n");
{
   int i=1,**x,a=5,b=4;
   int *arr[2];
   static int ayy[2][2]={9,8,7,6};
   x=(int **)(i==0?ayy:ayy);
   if((int)x[0]==9)
     printf("*** \n");
   else
     printf("*** \n");
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
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1,**x;
   int *arr[2];
   static int ayy[2][2]={9,8,7,6};
   x=(int **)(i==1?ayy:ayy);
   if((int)x[0]==9)
     printf("*** \n");
   else
     printf("*** \n");
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
     printf("*** \n");
   else
     printf("*** \n");
}
printf("*** \n");
  }
