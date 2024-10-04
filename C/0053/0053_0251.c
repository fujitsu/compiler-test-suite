#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=2;
  int volatile const   p=1;
  int volatile const   q=2;
  i=p<q;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int    const   p=1;
  int    const   q=2;
  i=p<q;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  struct tag {int a;int b;}st;
  int i=0;
  int *    const volatile   p=&(st.a);
  int *    const volatile   q=&(st.b);
  i=p<q;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2,a=3;
  struct tag {int a;int b;}st;
  struct tag *    const volatile   p=&st;
  struct tag *    const volatile   q=&st;
  i=p<q;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** \n");
  else
    printf("*** \n");
}
printf("*** \n");
  }
