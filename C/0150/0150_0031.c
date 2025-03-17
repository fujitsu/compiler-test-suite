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
int func2(){
  int b=0,c=0,d=0;
  b=(c+d,1)+(c&&d);
  if (b==1)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
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
    printf(" FUNC3 OK\n");
  else {
    printf(" FUNC3 NG\n");
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
    printf(" FUNC4 OK\n");
  else {
    printf(" FUNC4 NG\n");
    printf("*P=%d \n",*p);
  }
}
int func1(){
  int a=(1,2);
  int*ap=(int*)(&a,0);
  if (a==2 && ap==0 )
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("A=%d\n",a);
    printf("AP=%d\n",ap);
    }
}
