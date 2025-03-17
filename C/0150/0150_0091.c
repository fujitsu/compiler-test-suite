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
  float fa=1.0,fb=2.0;
  int a=0;
  a =(fa>=fb)+(0.0>=fa)+(fa>=3.0)+(1.0>=2.0);
  if (a==0)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("A=%d\n",a);
  }
}
int func2(){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  int x=0;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;
 
  x =(ap1>=ap2)+(bp1>=bp2);
  if (x==0)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("X=%d\n",x);
  }
}
volatile int a[2];
int func3(){
  volatile int *ap1,*ap2;
  int x=0;
  ap1=a;
  ap2=a+1;
  {
    extern volatile int a[2];
  }
  x =(ap1>=ap2);
  if (x==0)
    printf(" FUNC3 OK\n");
  else {
    printf(" FUNC3 NG\n");
    printf("X=%d\n",x);
  }
}
int b[2];
int func4(){
  int *ap1,*ap2;
  int x=0;
  ap1=b;
  ap2=b+1;
  {
    extern int b[2];
  }
  x =(ap1>=ap2);
  if (x==0)
    printf(" FUNC4 OK\n");
  else {
    printf(" FUNC4 NG\n");
    printf("X=%d\n",x);
  }
}
