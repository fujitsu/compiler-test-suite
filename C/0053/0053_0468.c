#include<stdio.h>
int main()
  {
printf("* \n");
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** \n");
}
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** \n");
}
{
  int a=1;
  int b=0;
  b= -a;
  if(b==(-1))
    printf("*** \n");
}
{
  int a=0;
  int b=0;
  b=!a;
  if(b==1)
    printf("*** \n");
}
{
  int a=1;
  int b=0;
  b=~a;
  if(b==(-2))
    printf("*** \n");
}
{
  char a=1;
  int b=0;
  b=(int)a;
  if(b==1)
    printf("*** \n");
}
{
  int a=2;
  int c=1;
  a=a<3?c:0;
  if(a==1)
    printf("*** \n");
}
{
  int a=2;
  int c=1;
  a=a>3?0:c;
  if(a==1)
    printf("*** \n");
}
{
  int a=2;
  int c=1;
  a=(c);
  if(a==1)
    printf("*** \n");
}
{
  int a=-2;
  int c=1;
  c=+a;
  if(a==-2)
    printf("*** \n");
}
printf("*** \n");
  }
