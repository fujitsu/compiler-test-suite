#include <stdio.h>
int main()
  {
printf("* \n");
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[i++];
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  i=arr[i--];
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  static int arr[]={1,2,3};
  int f();
  int b=0;
  i=arr[f(b)];
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  st.a=1;
  if(i==st.a)
    printf("*** \n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st[2];
  st[1].a=1;
  if(i==st[1].a)
    printf("*** \n");
}
{
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  (st).a=1;
  if(i==(st).a)
    printf("*** \n");
}
{
  int i=2;
  struct tag {
               int a;
               int b;
             }st;
  st.a=1;
  st.a+=1;
  if(i==st.a)
    printf("*** \n");
}
{
  int i=2;
  static int arr[]={1,2,3};
  arr[1]+=i;
  if(arr[1]==4)
    printf("*** \n");
}
{
  int i=2;
  (i)+=i;
  if(i==4)
    printf("*** \n");
}
{
  int i=10;
  i-=i;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
int f(b)
int b;
  {
    b=1;
    return(b);
  }
