#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=1,a=1;
  i/=-a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i%=-a;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=1;
  i&=-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i^=-a;
  if(i==-2)
    printf("*** \n");
}
{
  int i=1,a=1;
  i|=-a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=-a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1;
  i=- -i;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=!-a;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
