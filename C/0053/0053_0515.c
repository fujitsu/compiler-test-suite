#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=4;char a=1,b=0;
  i=b||--a;
  if(i==0&a==0)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b/--a;
  if(i==3)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b%--a;
  if(i==0)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b<<--a;
  if(i==6)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b>>--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b^ --a;
  if(i==2)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b|--a;
  if(i==3)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b&--a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b*--a;
  if(i==3)
    printf("*** \n");
}
{
  int i=4;char a=2,b=3;
  i=b- --a;
  if(i==2)
    printf("*** \n");
}
printf("*** \n");
  }
