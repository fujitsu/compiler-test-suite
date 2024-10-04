#include<stdio.h>
int main()
  {
printf("* \n");
{
  int i=1;
  i=i<!i;
  if(i==0)
    printf("*** \n");
}
{
  int i=1;
  i=i<=!i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  i=i>!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i=i>=!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i=i==!i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  i=i!=!i;
  if(i==1)
    printf("*** \n");
}
{
  int i=2;
  i=i&&!i;
  if(i==0)
    printf("*** \n");
}
{
  int i=2;
  i=0||!i;
  if(i==0)
    printf("*** \n");
}
{
  int i=0;
  i=2/!i;
  if(i==2)
    printf("*** \n");
}
{
  int i=0;
  i=2%!i;
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
