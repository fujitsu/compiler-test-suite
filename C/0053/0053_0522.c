#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5,a=2;
  i=a++ % 1;
  if(i==0&a==3)
    printf("*** \n");
}
{
  int i=5,a=2;
  i=a-- % 1;
  if(i==0&a==1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a) %1);
  if(i==0)
    printf("*** \n");
}
{
  int i=5,a=2;
  i=a++ << 1;
  if(i==4&a==3)
    printf("*** \n");
}
{
  int i=5,a=2;
  i=a-- << 1;
  if(i==4&a==1)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)<<1);
  if(i==4)
    printf("*** \n");
}
{
  int i=5,a=3;
  i=a++>>1;
  if(i==1&a==4)
    printf("*** \n");
}
{
  int i=5,a=3;
  i=a-->>1;
  if(i==1&a==2)
    printf("*** \n");
}
{
  int i=5,a=0,f();
  i=(f(a)>>1);
  if(i==1)
    printf("*** \n");
}
{
  int i=5,a=0;
  i=a++ ^ 1;
  if(i==1&a==1)
    printf("*** \n");
}
printf("*** \n");
  }
int f(a)
int a;
  {
    a=2;
    return(a);
  }
