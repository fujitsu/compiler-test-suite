#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=1;
  i=+sizeof(int);
#if INT64
  if(i==8)
#else
  if(i==4)
#endif
    printf("*** \n");
}
{
  int i=1,a=1;
  i=(++a,sizeof(int));
#if INT64
  if(i==8&a==2)
#else
  if(i==4&a==2)
#endif
    printf("*** \n");
}
{
  int i=1,a=2;
  i=i==1?a:0;
  if(i==2)
    printf("*** \n");
}
{
  int i=1,a=2;
  i=i==a?a:0;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=2;
  static int arr[]={1,2,3};
  i=i==arr[1]?a:0;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=2,b=0;
  i=i==(b=1+1)?a:0;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=2,b=0;
  i=i==b++ ?a:0;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=2,b=0;
  i=i==b-- ?a:0;
  if(i==0)
    printf("*** \n");
}
{
  int f();
  int i=1,a=2,b=0;
  i=i==f(b)?a:0;
  if(i==2)
    printf("*** \n");
}
{
  int f();
  int i=1,a=2,b=1;
  i=i==b?2:0;
  if(i==2)
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
