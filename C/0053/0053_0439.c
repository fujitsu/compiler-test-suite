#include<stdio.h>
int main()
  {

printf("* \n");
{
  short int  si;
  int  i=3000;
  char c=125;
  si=i-c;
  if(si==2875)
    printf("*** \n");
}
{
  static int a[]={1,2,3,4,5};
  int  i=3000;
  long int li;
  li=a[4]-i;
  if(li==-2995)
    printf("*** \n");
}
{
  static int a[]={1,2,3,4,5};
  char c;
  c=a[4]-a[2];
  if(c==2)
    printf("*** \n");
}
{
  int a[5];
  int  c=1,*p=&c;
  int i1,*p1=&i1;
  p1=(int *)(a-p);
  if(p1!=0)
    printf("*** \n");
}
{
  int  c=1,*p=&c;
  int i1,i2,*p1=&i1,*p2=&i2;
  p1=p;
  p2=p-c;
  if(p2==p1-1)
    printf("*** \n");
}
{
  int a[5];
  int  c=1,*p=&c;
  int i1,i2,*p1=&i1,*p2=&i2;
  p2=p;
  p1=(int *)(p-a);
  if(p1!=0)
    printf("*** \n");
}
{

  struct tt{ int i1;
              int c1;
              int t1;
            }tag1,tag2,*tag3=&tag2;
  int i1,i2,i3,*p1=&i1,*p2=&i2,*p3=&i3;
  int i4,i5,i6,*p4=&i4,*p5=&i5,*p6=&i6;
  p1=&(tag1.i1);
  p2=&(tag1.c1);
  p4=&(tag3->i1);
  p5=&(tag3->c1);
  p3=(int *)(p2-p1);
  p6=(int *)(p5-p4);
  if(p3==p6)
    printf("*** \n");
}
printf("* \n");
}

