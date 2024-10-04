#include<stdio.h>

#undef sun
int main()
  {
   int *ip0;
   ip0=0;

printf("* \n");
{
  int  i1= 5;
  int  i2=-5;
  int  i3= 5;
  char c1= 1;
  char c2=-1;
  if(i1<i2 || i1>i3 || i2>c1)
    printf("*** \n");
  else
  if(c2<c1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  static int a[]={1,2,3};
  if(0<a[1])
    printf("*** \n");
  else
    printf("*** \n");
}
{
  enum day{mon,tue,wed,thu,fri=10,sat,sun};
  enum day e0,e1,e2;
  e0=mon;
  e1=tue;
  e2=fri;
  if(0<e1 && 0<e2 && !e0 )
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int f1();
  if(ip0<(int *)f1)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int i1=1,i2=-1,*p1=&i1,*p2=&i2;
  if(0<*p1 && ip0<p1 && 0>*p2 && ip0<p2)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  static int a[]={10,11,12};
{
  if(a[1]>0 && a[0]>0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  if(a[1]>a[0] && a[0]<a[2])
    printf("*** \n");
  else
    printf("*** \n");
}
}
{
  enum day{mon,tue,wed,thu,fri=10,sat,sun};
  enum day e1,e2;
  e1=tue;
  e2=fri;
{
  int i1=2,i2=10;
  if(e1<i1 && e2>i1 && !(e2<i2))
    printf("*** \n");
  else
    printf("*** \n");
}
{
  enum i{i01,i02,i10=10};
  enum i i1,i2;
  i1=i01;
  i2=i10;
  if(e1>i1 && e1<i2 && !(e2<i2))
    printf("*** \n");
  else
    printf("*** \n");
}
}
{
  int f1();
  if((int *)f1>ip0)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int  f1(),f2();
  if(f1>f2 || f1<f2 )
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int  i1=1,i2=-1,*p1=&i1,*p2=&i2;
  if(0<*p1 && ip0<p1 && 0>*p2 && ip0<p2)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int  i1=1,i2=-1,*p1=&i1,*p2=&i2;
  if(*p1>*p2 && *p1>*p2 && (p1>p2 || p1<p2))
    printf("*** \n");
  else
    printf("*** \n");
}
printf("* \n");
  }
int f1()
{ }
int f2()
{ }
