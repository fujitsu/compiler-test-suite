#include<stdio.h>
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
  printf("01 END  \n");
}

int func2(){
  int b=0,c=0,d=0;
  b=(c+d,1)+(c&&d);
  if (b==1)
    printf("01 FUNC2 OK\n");
  else {
    printf("01 FUNC2 NG\n");
    printf("B=%d'\n",b);
  }
}

int func3(){
  int a[2];
  int *ap   ;
  int * p   ;
  a[1]=1;
  ap=a;

  p=(0,ap+1);
  if ((*p)==1)
    printf("01 FUNC3 OK\n");
  else {
    printf("01 FUNC3 NG\n");
    printf("*P=%d'\n",*p);
  }
}

int func4(){
  int a[2];
  int *ap,*bp;
  int *p;
  a[0]=0;
  a[1]=1;
  ap=a;
  bp=a+1;

  p=(bp-1,ap+1);
  if ((*p)==1)
    printf("01 FUNC4 OK\n");
  else {
    printf("01 FUNC4 NG\n");
    printf("*P=%d \n",*p);
  }
}

int func1(){
  int a=(1,2);
  int*ap=(&a,(int*)0);
  if (a==2 && ap==0 )
    printf("01 FUNC1 OK\n");
  else {
    printf("01 FUNC1 NG\n");
    printf("A=%d\n",a);
    printf("AP=%d\n",ap);
    }
}
