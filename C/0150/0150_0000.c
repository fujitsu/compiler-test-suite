#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int  f1();
int  f2(int);
int  f3(int,float);
int  f4(void);
int main()
{
  int x=0;
  int a=1;
  float f=1.0;
  printf(" START\n");
  x+=f1(a,f);    
  x+=f2(a);      
  x+=f3(a,f);    
  x+=f4();       
  if (x==6)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("X=%d\n",x);
  }
  printf(" END  \n");
exit (0);
}
int f1(int a,double f){
  return a+(int)f;
}
int f2(int a) {
  return a;
}
int f3(int a,float f)
{
  return a+(int)f;
}
int f4(void){
  return 1;
}
