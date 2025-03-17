#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func1();
int main()
{
  printf(" START\n");
  func1();
  printf(" END  \n");
exit (0);
}
int func1(){
  int a=1,b=0,c=0,d=0,e=0,ar[2];
  float f1=0.0,f2=0.0,fa[5] ;
  int *ap,*bp;
  ar[1]=1;
  ap=&a;bp=&b;
 
  (void)a;
  (void)1;
  (void)f1;
  (void)0.0;
  b=(int)(char)a;               
  *(bp=(int*)(char*)(void*)ap)=0; 
  f1=(float)1;
  f2=f1+(float)a;
 
  if (b==1 && a==0 && f2==1.0)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("A=%d\n",a);
    printf("B=%d\n",b);
    printf("F2=%f\n",f2);
  }
}
