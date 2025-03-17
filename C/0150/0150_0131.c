#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  func3();
  printf(" END  \n");
exit (0);
}
int func1(){
  int a=0,b=0,c=0,d=0,e=0,ar[2];
  float f1=0.0,f2=0.0,fa[5] ;
  struct { int sta;}st;
  ar[1]=1;
  st.sta=-1;
 
  a=1 ;
  b=a+(-ar[1]);  
  c=b+(-st.sta);   
  d=-c;            
  fa[-d]=-1.0;   
  fa[-d]=fa[1]+(-f1)+(-f2);   
 
  if (fa[1]==-1.0)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("FA[1]=%f\n",fa[1]);
  }
}
int func2(){
  unsigned int a=0,c=0;
  int b=0,ar[2];
  float f1=0.0,f2=0.0,fa[5] ;
  struct { int sta;}st;
  ar[1]=1;
  st.sta=-1;
 
  a=~ 0; 
  b=a-( ~(ar[1]) );  
  ar[ c=(~0) -( ~ b)]=0;     
 
  if (ar[1]==0)
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("AR[1]=%d\n",ar[1]);
  }
}
int func3(){
  unsigned int a=0,c=0;
  int b=0,ar[2];
  float f1=1.0,f2=0.0,fa[5] ;
  struct { int sta;}st;
  ar[1]=1;
  st.sta=-1;
 
  a= ! 0; 
  b=a-( !(ar[1]) );  
  ar[ c=(!0) -( !b)]=1;     
  ar[!0.0 + !f1]=ar[1]+1;
 
  if (ar[1]==2)
    printf(" FUNC3 OK\n");
  else {
    printf(" FUNC3 NG\n");
    printf("AR[1]=%d\n",ar[1]);
  }
}
