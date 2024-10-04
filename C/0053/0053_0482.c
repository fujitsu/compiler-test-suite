#include <stdio.h>
int main()
  {
printf("* \n");
{
  int i=1,a=1;
  i=~-a;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=(a==1)?-1:2;
  if(i==-1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=(a==0)?1:-2;
  if(i==-2)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=(-a);
  if(i==-1)
    printf("*** \n");
}
{
  int i=1;
  + -1;
  if(+ -i==-1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=i++ -a;
  if(i==0)
    printf("*** \n");
  else
    printf("*** \n", i);
}
{
  int i=1,a=1;
  i=i-- -a;
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=-2,b=0;
  b=(i=i+1,-i==a);
  if(b==1)
    printf("*** \n");
}
{
  int i=0;
  i=1+1;
  if(i==2)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a+a;
  if(i==2)
    printf("*** \n");
}
{
  int i=1;
  +i;
  if(1==+i)
    printf("*** \n");
}
{
  int i=0,a=1,b=2;
  i=a<+b;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
