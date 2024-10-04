#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0,a=1;
  i=a ^ -a;
  if(i==-2)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a | -a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a & -a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a * -a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a - -a;
  if(i==2)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=a + -a;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a[2],b=-1;
  a[0]=4;
  a[1]=5;
  i=a[-b];
  if(i==5)
    printf("*** \n");
}
{
  int i=0,a=1;
  i+=-a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i-=-a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i*=-a;
  if(i==-1)
    printf("*** \n");
}
printf("*** \n");
  }
