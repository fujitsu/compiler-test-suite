#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0,a=1,b=2;
  i=a<=+b;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1,b=2;
  i=a>+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1,b=2;
  i=a>=+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1,b=2;
  i=a==+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1,b=2;
  i=a!=+b;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=0,b=2;
  i=a&&+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=1,b=2;
  i=a||+b;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=2,b=2;
  i=a/+b;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=2,b=2;
  i=a%+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=2,b=2;
  i=a<<+b;
  if(i==8)
    printf("*** \n");
}
printf("*** \n");
  }
