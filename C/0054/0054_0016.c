#include<stdio.h>
int func2();
int func1();
 

int main()
{
  printf("02 START\n");
  func1();
  func2();
  printf("02 END  \n");
}

int func1(){
  volatile int a,ar[5]={0};
           float b=0.0;
  volatile int *ap=ar;
  ar[0]=1;
  a=1;
  a +=a+(a&&a);
  a += (*ap) ;
  b += 1.0 ;
  if (a==4 && b==1.0)
    printf("01 FUNC1 OK\n");
  else {
    printf("01 FUNC1 NG\n");
    printf("A=%d\n",a);
    printf("B=%f\n",b);
  }
}

int func2(){
  volatile int a=0,ar[5]={0};
           float b=0.0;
  volatile int *ap=ar;
  ar[0]=1;
  ap-=0;
  a -= (*ap) ;
  b -= (-1.0)  ;
  if (a==-1 && b==1.0)
    printf("01 FUNC2 OK\n");
  else {
    printf("01 FUNC2 NG\n");
    printf("A=%d\n",a);
    printf("B=%f\n",b);
  }
}
