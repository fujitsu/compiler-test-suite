#include <stdio.h>

void sub1();
static int a[]={1,2,3,4,5,6,7,8,9,10};
static int b[]={10,20,30,40,50,60,70,80,90,100};
int main()
{
  int c[10];
  int d,e,i,sum;

  for(sum=0,i=0 ; i<10 ; i++) {
    sub1(&d,&e,i);
    c[i] = ((0-a[i])*d)*((0-b[i])*e);
    sum += c[i];
  }
  if ( sum == 2722500 )
    printf(" is OK\n");
  else
    printf(" is NG\n");
}
void sub1(pd,pe,i)
int *pd,*pe;
int i;
{
  *pd = b[i]-a[i];
  *pe = b[i]/a[i];
}
