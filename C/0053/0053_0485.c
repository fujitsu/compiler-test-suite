#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0,a=1;
  i*= +a;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1;
  i/= +a;
  if(i==0)
    printf("*** \n");
}
{
  int i=3;
  int a=2;
  i %= a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i>>= +a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i<<= +a;
  if(i==4)
    printf("*** \n");
}
{
  int i=2,a=1;
  i&= +a;
  if(i==0)
    printf("*** \n");
}
{
  int i=2,a=1;
  i^= +a;
  if(i==3)
    printf("*** \n");
}
{
  int i=2,a=1;
  i|= +a;
  if(i==3)
    printf("*** \n");
}
{
  int i=2,a=1;
  i= +a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i= -+a;
  if(i==-1)
    printf("*** \n");
}
printf("*** \n");
  }
