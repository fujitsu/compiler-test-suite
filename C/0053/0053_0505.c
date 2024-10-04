#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=1,a=0;
  i=a>(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=0;
  i=a>=(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=0;
  i=a==(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=0;
  i=a!=(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a&&(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a||(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=0,a=1;
  i=a/(a);
  if(i==1)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=a%(a);
  if(i==0)
    printf("*** \n");
}
{
  int i=1,a=1;
  i=a<<(a);
  if(i==2)
    printf("*** \n");
}
{
  int i=0,a=2;
  i=a>>(1);
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
