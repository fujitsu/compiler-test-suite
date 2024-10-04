#include<stdio.h>
int main()
  {
printf("* \n");
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=1 && *p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=0 || *p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=4 / *p;
  if(i==2)
    printf("*** \n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 % *p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 << *p;
  if(i==12)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 >> *p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 ^ *p;
  if(i==2)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 | *p;
  if(i==3)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int i=0;
  p=&a;
  i=3 & *p;
  if(i==1)
    printf("*** \n");
}
{
  int *p;
  int a=2;
  int i=0;
  p=&a;
  i=3 * *p;
  if(i==6)
    printf("*** \n");
}
printf("*** \n");
  }
