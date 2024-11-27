
#include <stdio.h>
#include <math.h>
void sub();
int main()
{
  double a[10][10][10];
  double b[10][10][10];
  int i,j,k;

  for(k=0;k<10;k++) {
    for(j=0;j<10;j++) {
      for(i=0;i<10;i++) {
        a[k][j][i] = i ;
      }
    }
  }
  
  printf("-end- \n");
  printf("%f \n",a[3][3][3]);
}
void sub(a,len,st,end,inc)
   int len,st,end,inc;
   double a[10][10][10];
{

  int i,j,k;
  
  for(k=st;k<end;k++) {
    for(j=st;j<end;j++) {
      for(i=st;i<end;i++) {
	a[k][j][i]=a[k-1][j][i]+a[k][j-1][i]+a[k][j][i-1];
      }
    }
  }
  return;
}
