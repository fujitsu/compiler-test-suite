#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=4,a=2;
  i/=(a);
  if(i==2)
    printf("*** \n");
}
{
  int i=4,a=2;
  i%=(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=4,a=2;
  i>>=(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=2;
  i<<=(a);
  if(i==16)
    printf("*** \n");
}
{
  int i=4,a=2;
  i&=(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=4,a=2;
  i^=(a);
  if(i==6)
    printf("*** \n");
}
{
  int i=4,a=2;
  i|=(a);
  if(i==6)
    printf("*** \n");
}
{
  int i=4,a=2;
  i=(a);
  if(i==2)
    printf("*** \n");
}
{
  int *i,a=2;
  i=&(a);
  if(*i==2)
    printf("*** \n");
}
{
  int *i,a=2,b=0;
  i=&(a);
  b=*(i);
  if(b==2)
    printf("*** \n");
}
printf("*** \n");
  }
