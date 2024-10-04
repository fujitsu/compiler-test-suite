#include<stdio.h>
int yes=1;
int no=0;
int main()
  {
printf("* \n");
{
  int i=2;
  i*=2;
  if(i==4)
    printf("*** \n");
}
{
  int i=2;
  i/=2;
  if(i==1)
    printf("*** \n");
}
{
  int i=3;
  i%=2;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i>>=1;
  if(i==1)
    printf("*** \n");
}
{
  int i=1;
  i<<=1;
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  i&=2;
  if(i==0)
    printf("*** \n");
}
{
  int i=1;
  i^=2;
  if(i==3)
    printf("*** \n");
}
{
  int i=1;
  i|=2;
  if(i==3)
    printf("*** \n");
}
{
  int i=0;
  i=1;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=-1;
  if(i==-1)
    printf("*** \n");
}
printf("*** \n");
  }
