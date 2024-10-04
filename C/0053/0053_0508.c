#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=0,a=2;
  i=-(a);
  if(i==-2)
    printf("*** \n");
}
{
  int i=1,a=2;
  i=!(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=~(a);
  if(i==-2)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=(int)(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=(i==0)?(++a):1;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=(i!=0)?1:(++a);
  if(i==2)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=((a=a+1)+1);
  if(i==3)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=+(a=a+1);
  if(i==2)
    printf("*** \n");
}
{
  int i=0;char a=1;
  i=++(a);
  if(i==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=--(a);
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
