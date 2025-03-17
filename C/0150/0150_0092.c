#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  func3();
  func4();
  printf(" END  \n");
exit (0);
}
int func1(){
  float fa[1],fb[1];
  int a=0;
  fa[0]=0.0;fb[0]=1.0;
  a =(fa[0]==fb[0])+(0.0==fa[0])+(fa[0]==0.0)+(0.0==0.0);
  if (a==3)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("A=%d\n",a);
  }
}
int func2(){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  struct tag { int a;} st;
  struct tag * sta,*stb;
  int x=0;
  sta=&st; stb=&st;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;
 
  x =(ap1==ap2)+(bp1==bp2)+(sta==stb);
  if (x==1)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("X=%d\n",x);
  }
}
int func3(){
  const int a[2];
  const int*ap;
  const void *vpq=0x0;
        void *vp=0x0 ;
  int  x=0;
  ap=a;
  x=(ap==vpq)+(ap==vp);
  if (x==0)
    printf(" FUNC3 OK\n");
  else {
    printf(" FUNC3 NG\n");
    printf("X=%d\n",x);
  }
}
int func4(){
  int a[2];
  int*ap;
  const void *vpq=0x0;
        void *vp=0x0 ;
  int  x=0;
  ap=a;
  x=(ap==vpq)+(ap==vp);
  if (x==0)
    printf(" FUNC4 OK\n");
  else {
    printf(" FUNC4 NG\n");
    printf("X=%d\n",x);
  }
}
volatile int a[2];
int func5(){
  volatile void *vpq;
        void *vp;
  volatile int *ap;
  int x=0;
 
  ap=a;
  vpq=(void *)ap;
  vp =(void *)ap;
  {
    extern volatile int a[2];
  }
  x =(ap==vpq)+(ap==vp);
  if (x==2)
    printf(" FUNC5 OK\n");
  else {
    printf(" FUNC5 NG\n");
    printf("X=%d\n",x);
  }
}
int b[2];
int func6(){
  const void *vpq;
        void *vp;
  int *ap;
  int x=0;
 
  ap=b;
  vpq=(void *)ap;
  vp =(void *)ap;
  {
    extern int b[2];
  }
  x =(ap==vpq)+(ap==vp);
  if (x==2)
    printf(" FUNC6 OK\n");
  else {
    printf(" FUNC6 NG\n");
    printf("X=%d\n",x);
  }
}
int func7(){
  int *ap1,*ap2;
  int a[1];
  int x=0;
  struct tag {int a;}st;
  struct tag *stp;
  stp=&st;
  ap1=a;
  ap2=&x;
 
  x =(ap1==(1-1))+(ap2==0)+((-1+1)==stp);
  if (x==0)
    printf(" FUNC7 OK\n");
  else {
    printf(" FUNC7 NG\n");
    printf("X=%d\n",x);
  }
}
