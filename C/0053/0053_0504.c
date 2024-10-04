#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=1,a=2,b=1;
  i=i==b?a:0;
  if(i==2)
    printf("*** \n");
}
{
  static int arr[]={1,2,3};
  int i=1,b=1;
  i=i==b?arr[1]:0;
  if(i==2)
    printf("*** \n");
}
{
  int i=2,b=2;
  i=i==b?(b=b+1): 0;
  if(i==3)
    printf("*** \n");
}
{
  int i=0,b=2;
  i=b==2?b++: 0;
  if(i==2)
    printf("*** \n");
}
{
  int i=0,b=2;
  i=b==2?b--: 0;
  if(i==2)
    printf("*** \n");
}
{
  int i=2,b=2,f(),a=0;
  i=i==b?f(a):0;
  if(i==3)
    printf("*** \n");
}
{
  int i=0,f(),a=0;
  i=f(a);
  if(i==3)
    printf("*** \n");
}
{
  int i=0,a=0;
  (i=a+1);
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=0;
  i=a<(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=0;
  i=a<=(a);
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a)
int a;
  {
    a=3;
    return(a);
  }
