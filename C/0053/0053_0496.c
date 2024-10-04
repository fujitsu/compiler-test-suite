#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0,a=1,b=-2;
  i=b<=~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1,b=-2;
  i=b>~a;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1,b=-2;
  i=b>=~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1,b=-2;
  i=b==~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1,b=-2;
  i=b!=~a;
  if(i==0)
    printf("*** \n");
}
{
  int i=2,a=1,b=1;
  i=b&&~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1,b=0;
  i=b||~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1,b=6;
  i=b/~a;
  if(i==-3)
    printf("*** \n");
}
{
  int i=0,a=1,b=5;
  i=b%~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=-2,b=1;
  i=b<<~a;
  if(i==2)
    printf("*** \n");
}
printf("*** \n");
  }
