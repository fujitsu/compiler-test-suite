#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  printf(" END  \n");
exit (0);
}
static int func11();
int func1(){
  int a=0,b=0,c=0,d=0,x=0;
  int ar[3];
  int *ap,(*fp)(),*arp;
  struct { int sta;}st[2],*stp;
  ar[0]=1;
  ar[1]=1;
  ar[2]=1;
  st[1].sta =1;
  ap=&a;
  fp=func11;
  arp=ar;
  stp=st;
 
  x=*ap;
  x+=*(arp+1);
  x+=*(arp+2);
  x+=(*fp)();
 
  if (x==3)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("X=%d\n",x);
  }
  return 0;
}
int func11(){ return 1;}
int func2()
{
  int (*p)[2];
  int ar[2];
  int arr[1][1];
  int *arp;
  int x=0;
  struct { int sta;} st,*stp;
  arp=ar;
  stp=&st;
  st.sta=1;
  p=arr      ;
  (*p)[0]=1;
  ar[0]=1;
 
  x  = (*p)[0];
  x += arp[0];
  x += (*stp).sta;
 
  if (x==3)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("X=%d\n",x);
  }
  return 0;
}
