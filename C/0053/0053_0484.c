#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=1,a=4,b=2;
  i=a>>+b;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a^+b;
  if(i==6)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a|+b;
  if(i==6)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a&+b;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a*+b;
  if(i==8)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a-+b;
  if(i==2)
    printf("*** \n");
}
{
  int i=1,a=4,b=2;
  i=a+ +b;
  if(i==6)
    printf("*** \n");
}
{
  int i=1,arr[2],b=0;
  arr[0]=3;
  i=arr[+b];
  if(i==3)
    printf("*** \n");
}
{
  int i=0,a=1;
  i+= +a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i-= +a;
  if(i==-1)
    printf("*** \n");
}
printf("*** \n");
  }
