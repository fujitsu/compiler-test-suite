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
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
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
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("A=%d\n",a);
    printf("B=%f\n",b);
  }
}
