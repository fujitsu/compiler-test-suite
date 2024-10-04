#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5;char a=2;
  i=i+(a)--;
  if(i==7&a==1)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i=+ --a;
  if(i==1)
    printf("*** \n");
}
{
  int i=5;char a=2;
  i+=a,--i;
  if(i==6)
    printf("*** \n");
}
{
  int i=5;
  i+=2,--i;
  if(i==6)
    printf("*** \n");
}
{
  int i=5;
  i+=i,++i;
  if(i==11)
    printf("*** \n");
}
{
  int i=5,a=0;
  static int arr[]={1,2,3};
  i=arr[0],a=arr[i];
  if(i==1&a==2)
    printf("*** \n");
}
{
  int i=5,a=1;
  static int arr[]={1,2,3};
  i=a*(a+1),arr[i]=1;
  if(i==2&arr[2]==1)
    printf("*** \n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a++,arr[a]=1;
  if(a==2&arr[2]==1)
    printf("*** \n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a--,arr[a]=1;
  if(a==0&arr[0]==1)
    printf("*** \n");
}
{
  int i=5,a=1,f();
  static int arr[]={7,8,9};
  i=f(a),i=arr[i];
  if(i==9)
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
