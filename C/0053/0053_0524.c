#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5,f();
  i=f(1,1);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,f();
  i=f(a,b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=0,f();
  static int arr[]={1,2,3};
  i=f(arr[0],a);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=0,b=1,f();
  i=f(a=(a+1),b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,f();
  i=f(a++,b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,f();
  i=f(a--,b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=2,b=1,f(),fff();
  i=f(a=fff(a),b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,f();
  i=f(1,1);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,f(),a=1,b=1;
  i=f(a,b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,f1(),a=1,b=1;
  i=f1(a,&b);
  if(i==2)
    printf("*** \n");
}
printf("*** \n");
  }
int f(c,d)
int c;
int d;
  {
    if(c==1&d==1)
    {
    c=2;
    return(c);
    }
    else
    return(1);
  }
int fff(a)
int a;
{
if(a==2)
return(1);
else
return(3);
}
int f1(a,b)
int a;
int *b;
{
int *p;
p=b;
if(*p==1&a==1)
return(2);
else
return(8);
}
