#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=4;char a=1;
  i|= ++a;
  if(i==6&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i= ++a;
  if(i==2&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i= - ++a;
  if(i==-2&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i= ! ++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=~ ++a;
  if(i==-2&a==1)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=(i>0)?++a:0;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=(i<0)?0:++a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=i+(++a);
  if(i==5)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=(a)++;
  if(i==0&a==1)
    printf("*** \n");
}
{
  int i=4;char a=0;
  i=+ ++a;
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
