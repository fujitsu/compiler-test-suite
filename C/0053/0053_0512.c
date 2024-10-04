#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=1;char a=1,b=0;
  static int arr[]={1,2,4};
  i=(arr[a]++);
  b=arr[a];
  if(i==2&a==1&b==3)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i+= ++a;
  if(i==3&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i-= ++a;
  if(i==-1&a==2)
    printf("*** \n");
}
{
  int i=1;char a=1;
  i*= ++a;
  if(i==2&a==2)
    printf("*** \n");
}
{
  int i=2;char a=1;
  i/= ++a;
  if(i==1&a==2)
    printf("*** \n");
}
{
  int i=2;char a=1;
  i%= ++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i>>= ++a;
  if(i==1&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i<<= ++a;
  if(i==16&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i&= ++a;
  if(i==0&a==2)
    printf("*** \n");
}
{
  int i=4;char a=1;
  i^= ++a;
  if(i==6&a==2)
    printf("*** \n");
}
printf("*** \n");
  }
