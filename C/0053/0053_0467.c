#include<stdio.h>
int main()
  {
printf("* \n");
{
  int a=0,b=1;
  a*=b;
  if(a==0)
    printf("*** \n");
}
{
  int a=4,b=4;
  a/=b;
  if(a==1)
    printf("*** \n");
}
{
  int a=3,b=2;
  a%=b;
  if(a==1)
    printf("*** \n");
}
{
  int a=2,b=1;
  a>>=b;
  if(a==1)
    printf("*** \n");
}
{
  int a=1,b=1;
  a<<=b;
  if(a==2)
    printf("*** \n");
}
{
  int a=3,b=1;
  a&=b;
  if(a==1)
    printf("*** \n");
}
{
  int a=2,b=1;
  a^=b;
  if(a==3)
    printf("*** \n");
}
{
  int a=2,b=1;
  a|=b;
  if(a==3)
    printf("*** \n");
}
{
  int a=2,b=1;
  a=b;
  if(a==1)
    printf("*** \n");
}
printf("*** \n");
  }
