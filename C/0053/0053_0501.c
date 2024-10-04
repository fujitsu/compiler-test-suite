#include<stdio.h>
#if INT64
#define int __int32
#endif
int main()
  {
printf("*** \n");
{
  int i=4;
  i=i&sizeof(int);
  if(i==4)
    printf("*** \n");
}
{
  int i=4;
  i=i*sizeof(int);
  if(i==16)
    printf("*** \n");
}
{
  int i=4;
  i=i-sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=4;
  i=i+sizeof(int);
  if(i==8)
    printf("*** \n");
}
{
  int i=4;
  static int arr[]={1,2,3,4,5,6};
  i=arr[sizeof(int)];
  if(i==5)
    printf("*** \n");
}
{
  int i=4;
  i+=sizeof(int);
  if(i==8)
    printf("*** \n");
}
{
  int i=4;
  i-=sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=4;
  i*=sizeof(int);
  if(i==16)
    printf("*** \n");
}
{
  int i=4;
  i/=sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
  int i=4;
  i%=sizeof(int);
  if(i==0)
    printf("*** \n");
}
printf("*** \n");
  }
