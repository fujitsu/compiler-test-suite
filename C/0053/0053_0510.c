#include<stdio.h>
int main()
  {
printf("*** \n");
{
  char a=1;
  ++a;
  if(a==2)
    printf("*** \n");
}
{
  int i=1;char a=0;
  i=i<++a;
  if(i==0&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i<=++a;
  if(i==0&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i>++a;
  if(i==1&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i>=++a;
  if(i==1&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i==++a;
  if(i==0&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i!=++a;
  if(i==1&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i&&++a;
  if(i==1&a==1)
    printf("*** \n");
}
{
  int i=2;char a=0;
  i=i||++a;
  if(i==1&a==0)
    printf("*** \n");
}
{
  int i=2;char a=1;
  i=i/++a;
  if(i==1&a==2)
    printf("*** \n");
}
printf("*** \n");
  }
