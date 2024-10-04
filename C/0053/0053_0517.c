#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5;char a=3;
  i&=--a;
  if(i==0)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i^=--a;
  if(i==7)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i|=--a;
  if(i==7)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i=--a;
  if(i==2)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i=- --a;
  if(i==-2)
    printf("*** \n");
}
{
  int i=5;char a=3;
  i=! --a;
  if(i==0)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i=~ --a;
  if(i==-2)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i=(i>a)?--a:0;
  if(i==1)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i=(i<a)?0:--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i=i+(--a);
  if(i==6)
    printf("*** \n");
}
printf("*** \n");
  }
