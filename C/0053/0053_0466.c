#include<stdio.h>
int yes=1;
int no=0;
int main()
  {
printf("* \n");
{
  int i;
  struct tag {
               int a;
               char b;
             }st,*p;
  p=&st;
  p->a=1;
  i=p->a;
  if(i)
    printf("*** \n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i])
    printf("*** \n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a)
    printf("*** \n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i)
    printf("*** \n");
}
{
  int i=2,a=1;
  i-=a;
  if(i)
    printf("*** \n");
}
printf("*** \n");
  }
