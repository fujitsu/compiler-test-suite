#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func11();
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
int func1(){
  int*ap,*arp,**app;
  int a=1,b=0,c=0,d=0,e=0,ar[2];
  struct tag {int x;} st[2];
  struct tag *stp;
 
  ap=&a;
 
  arp=&(ar[0]);
  (*arp)=1;            
 
  stp=&(st[0])+1;
  stp->x=1;            
 
  arp=&(ar[0])+1;
  (*arp)=1;            
 
  app=&arp;
  ++(**app);           
 
  ap=ar;
  ++(*ap)  ;           
 
  a=func11();          
 
  if (ar[0]==2 && st[1].x==1 && ar[1]==2 && a==1)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("AR[0]=%d\n",ar[0]);
    printf("AR[1]=%d\n",ar[1]);
    printf("ST[1].X=%d\n",st[1].x);
    printf("A=%d\n",a);
  }
}
int func11()
{ return 1;}
int func2(){
  int a=1,ar[2]={1,1};
  int *ap=&a ;
  int *arp=&(ar[0]);
  int *brp=(int*)&ar  ;
  struct tag {int x;} st[2]={0,1};
  struct tag *stp=&(st[0])+1;
 
  if (*ap==1 && *arp==1 && (*stp).x==1 && *brp==1)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("*AP=%d\n",*ap);
    printf("*ARP=%d\n",*arp);
    printf("*STP.X=%d\n",(*stp).x);
    printf("*BRP=%d\n",*brp);
  }
}
