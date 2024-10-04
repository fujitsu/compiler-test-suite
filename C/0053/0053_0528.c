#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int a=1,b=2,c=3;
  a=b++ & c;
  if(a==2)
    printf("*** \n");
}
{
  int a=1,b=2,c=3;
  a=b-- & c;
  if(a==2)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] < b;
  if(i==0)
    printf("*** \n");
}
{
  static int a=1;
  int i=0,b=2;
  i=(a+0) < b;
  if(i==1)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] <= b;
  if(i==1)
    printf("*** \n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)<=q;
  if(i==1)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] > b;
  if(i==0)
    printf("*** \n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)>q;
  if(i==0)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] >= b;
  if(i==1)
    printf("*** \n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)>=q;
  if(i==1)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] == b;
  if(i==1)
    printf("*** \n");
}
{
  int p=1,q=2;
  int i=0;
  i=(p+1)==q;
  if(i==1)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=1,b=2;
  i=a[1] != b;
  if(i==0)
    printf("*** \n");
}
{
  int p=1,q=2;
  int i=1;
  i=(p+1)!=q;
  if(i==0)
    printf("*** \n");
}
{
  static int a[2]={1,2};
  int i=0,b=2;
  i=a[1] && b;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
