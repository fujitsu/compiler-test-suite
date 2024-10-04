#include<stdio.h>
int func5();
int func4();
int func3();
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  printf("01 END  \n");
}

int func1(){
  static int *p,i=1;
  static short int *sp,si=2;
  static char  *cp,c=3;
  static unsigned int *uip,ui=4;
  static unsigned short int *usp,us=5;
  static unsigned char      *ucp,uc=6;

  p=&i;
  sp=&si;
  cp=&c;
  uip=&ui;
  usp=&us;
  ucp=&uc;

  if (*p==1  &&  *sp==2 && *cp==3 && *uip==4 && *usp==5 && *ucp==6)
    printf("01 FUNC1 OK\n");
  else
    printf("01 FUNC1 NG\n");
}

int func2(){
  struct stag { int sa; char sb; } st,*stp;
  union  utag { int ua; char ub; } ut,*utp;
  st.sb=1;
  ut.ub=2;

  stp=&st;
  utp=&ut;

  if ((*stp).sb==1 && (*utp).ub==2)
    printf("01 FUNC2 OK\n");
  else
    printf("01 FUNC2 NG\n");
}

int func3(){
  int (*fp)(),f();
  int ar[3],*arp;
  ar[0]=1;ar[1]=2;ar[2]=3;

  fp=f;
  arp=ar;

  if ((*fp)()==1 && *(arp+2)==3)
    printf("01 FUNC3 OK\n");
  else
    printf("01 FUNC3 NG\n");
}
int f()
{
   return 1;
}

int func4(){
  int  *ap[2],i;
  char *cp,c;
  unsigned char *ucp,uc;
  i=1;c=1;uc=1;

  ap[1]=&i;
  cp=&c+1;
  ucp=&uc+(i&&i);

  if (*ap[1]==1 && *(cp-1)==1 && *(ucp-1)==1)
    printf("01 FUNC4 OK\n");
  else
    printf("01 FUNC4 NG\n");
}

int func5(){
  int  ar[3],*ap;
  char **cpp,*cp,*p,c;
  unsigned char *ucp;
  c=1;ar[2]=2;
  p=&c;
  cpp=&p;
  ap=&ar[2];
  cp=&(**cpp);

  if (*ap==2 && *cp==1)
    printf("01 FUNC5 OK\n");
  else
    printf("01 FUNC5 NG\n");
}
