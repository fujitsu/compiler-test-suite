#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0;
  i-=!i;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1,a=2;
  a*=!i;
  if(a==0)
    printf("*** \n");
}
{
  int i=0,a=2,b=0;
  b=(a/=!i);
  if(b==2)
    printf("*** \n");
}
{
  int i=0,a=2;
  a%=!i;
  if(a==0)
    printf("*** \n");
}
{
  int i=0,a=2;
  a>>=!i;
  if(a==1)
    printf("*** \n");
}
{
  int i=0,a=2;
  a<<=!i;
  if(a==4)
    printf("*** \n");
}
{
  int i=0,a=2;
  a&=!i;
  if(a==0)
    printf("*** \n");
}
{
  int i=0,a=2;
  a^=!i;
  if(a==3)
    printf("*** \n");
}
{
  int i=0,a=2;
  a|=!i;
  if(a==3)
    printf("*** \n");
}
{
  int i=5;
  i=!i;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
