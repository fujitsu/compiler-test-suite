#include<stdio.h>
int yes=1;
int no=0;
int main()
  {
printf("* \n");
{
  int i=0,ai=1;
  i=2>>ai;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,ai=1;
  i=2^ai;
  if(i==3)
    printf("*** \n");
}
{
  int i=1,ai=1;
  i=2|ai;
  if(i==3)
    printf("*** \n");
}
{
  int i=1,ai=2;
  i=2&ai;
  if(i==2)
    printf("*** \n");
}
{
  int i=0,ai=2;
  i=2*ai;
  if(i==4)
    printf("*** \n");
}
{
  int i=1,ai=2;
  i=3-ai;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,ai=2;
  i=2+ai;
  if(i==4)
    printf("*** \n");
}
{
  int i=0;
  struct tag {
               int a;
               char b;
             }*p,st;
  p=&st;
  p->a=1;
  i=p->a;
  if(i==1)
    printf("*** \n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i]==1)
    printf("*** \n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a==1)
    printf("*** \n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i-=a;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
