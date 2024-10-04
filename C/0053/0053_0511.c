#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=2;char a=1;
  i=i%++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=2;char a=1;
  i=i<<++a;
  if(i==8&a==2)
    printf("*** \n");
}
{
  int i=8;char a=1;
  i=i>>++a;
  if(i==2&a==2)
    printf("*** \n");
}
{
  int i=2;char a=1;
  i=i^++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=i|++a;
  if(i==3&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=i&++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=i*++a;
  if(i==2&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=i-++a;
  if(i==-1&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i=i+ ++a;
  if(i==3&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  static int arr[]={1,2,3};
  i=arr[++a];
  if(i==3&a==2)
    printf("*** \n");
}
printf("*** \n");
  }
