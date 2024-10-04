#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=0;
  i=-!i;
  if(i==-1)
    printf("*** \n");
}
{
  int i=4;
  i=!!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=0;
  i=~!i;
  if(i==-2)
    printf("*** \n");
}
{
  int i=0,a=0,b=2;
  i=(i==0)?!a:b;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=0,b=2;
  i=(i==2)?a:!b;
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=2;
  i=(!a+a);
  if(i==2)
    printf("*** \n");
}
{
  int i=0,a=0;
  i=+!a;
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=0;
  i=(++a,!a);
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=~a;
  if(~a==-2)
    printf("*** \n");
}
{
  int i=1,a=1,b=-2;
  i=b<~a;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
