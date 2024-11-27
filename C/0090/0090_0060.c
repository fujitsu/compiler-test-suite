
#include <stdio.h>
#include <math.h>

int main(){

  double A[10],B[10];
  int a,b,i,l,m,n;
 
  a=2;
  b=5;
  m=a*b;
  n=a+b*3;
  l=b*2;

  for(i=0;i<10;i++) A[i]=0;
  for(i=0;i<10;i++) B[i]=0;

  for(i=n; i<m; i+=l){
    B[i] = i*2+i;
    A[i] = exp(B[i]);
  }
  
  for(i=0;i<10;i++) printf("A=%f\n",A[i]);

  return 0;
}
