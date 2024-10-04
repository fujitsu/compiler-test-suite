#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=5,f(),a=1,b=1,*p;
  p=&b;
  i=f(a,*p);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,fff();
  i=fff(a,-1);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,f1();
  i=f1(a,+1);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,!b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=-2,f1();
  i=f1(a,~b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,sizeof(char));
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=1,f1();
  i=f1(a,(b));
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,++b);
  if(i==2)
    printf("*** \n");
}
{
  int i=5,a=1,b=2,f1();
  i=f1(a,--b);
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
int fff(a,b)
int a,b;
{
if(a==1&b==-1)
return(2);
else
return(0);
}
int f1(a,b)
int a;
int b;
{
if(a==1&b==1)
return(2);
else
return(0);
}
